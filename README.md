# Asynchronous FIFO (Verilog)

A parameterized, dual-clock asynchronous FIFO written in Verilog, verified with a
self-checking testbench, and taken through synthesis, implementation, and static
timing closure in Vivado.

The design crosses data between two independent, unrelated clock domains using
the industry-standard **Gray-coded pointer + 2-flop synchronizer** technique,
with a full/empty scheme based on an explicit pointer **wrap (phase) bit** so
that all memory locations are usable.

---

## 1. Status

| Item | Result |
|---|---|
| Functional simulation (Icarus Verilog) | **PASS** (0 errors, scoreboard-checked) |
| Gray-code CDC | Implemented |
| 2-stage synchronizers | Implemented |
| Wrap / phase bit | Implemented |
| Usable capacity | 100% of memory (no wasted location) |
| Parameterization | `AW` (address width), `DW` (data width) |
| Vivado synthesis & implementation | Completed |
| Setup timing | PASS — WNS = +9.276 ns, 0 failing endpoints |
| Hold timing | PASS — WHS = +0.203 ns, 0 failing endpoints |
| Pulse-width timing | PASS — WPWS = +5.750 ns, 0 failing endpoints |

This project was built over two documented sessions. Session 1 established a
correct *functional* FIFO using simple binary pointers (a deliberate learning
step). Session 2 replaced the binary CDC path with a Gray-coded, wrap-bit
architecture — the version that is safe to actually take to silicon/FPGA —
and closed timing in Vivado. See [§8 Design Evolution](#8-design-evolution--lessons-learned)
for the full reasoning trail, including the mistakes that were made and fixed
along the way.

---

## 2. Repository Contents

| File | Purpose |
|---|---|
| `asynchronous_fifo.v` | FIFO RTL: top module + `dff`, `binary_2_gray`, `gray_2_binary` helper modules |
| `test_bench.v` | Self-checking testbench with a scoreboard/reference model and 8 test scenarios |
| `asynchronous_fifo.xdc` | Vivado timing constraints (clock definitions + asynchronous clock-group declaration) |
| `schematic.pdf` | Post-synthesis schematic (small `AW=2, DW=2` build used for implementation inspection) |

---

## 3. Interface

```verilog
module asynchronous_fifo #(parameter AW = 2, DW = 2) (
    input              wr_clk,
    input              rd_clk,
    input              wr_reset_n,   // active-low, write-domain reset
    input              rd_reset_n,   // active-low, read-domain reset
    input              wr_en,
    input              rd_en,
    input  [DW-1:0]    din,
    output reg [DW-1:0] dout,
    output reg          empty,
    output reg          full
);
```

| Parameter | Meaning | Relationship |
|---|---|---|
| `AW` | FIFO address width | FIFO depth = `2^AW` |
| `DW` | Data width | Width of `din` / `dout` |
| — | Pointer width | `AW + 1` (one extra **phase/wrap bit**) |

Both resets are **asynchronous, active-low**, and are local to their own clock
domain (`wr_reset_n` for the write side, `rd_reset_n` for the read side) — a
requirement for any real dual-clock design, since a single global reset cannot
be guaranteed to release synchronously with respect to both clocks.

**Reference configuration used during development:** `AW = 6`, `DW = 8`
→ 64 × 8 FIFO, write clock 80 MHz (12.5 ns), read clock 50 MHz (20 ns).
A smaller `AW = 2`, `DW = 2` build was used purely to make the synthesized
schematic easy to inspect visually (see `schematic.pdf`).

---

## 4. Architecture

```
                         ASYNCHRONOUS FIFO
                              │
              ┌───────────────┴───────────────┐
              │                                │
       WRITE CLOCK DOMAIN               READ CLOCK DOMAIN
              │                                │
          Binary wp                        Binary rp
              │                                │
              ▼                                ▼
       Binary → Gray                    Binary → Gray
              │                                │
              ▼                                ▼
       2-FF synchronizer                2-FF synchronizer
       (sampled on rd_clk)              (sampled on wr_clk)
              │                                │
              ▼                                ▼
        wp_gray_sync                     rp_gray_sync
        (in read domain)                (in write domain)
              │                                │
              ▼                                ▼
        Gray → Binary                    Gray → Binary
              │                                │
              ▼                                ▼
         wp_sync                          rp_sync
              │                                │
              ▼                                ▼
          EMPTY logic                     FULL logic
       (compares rp, wp_sync)      (compares wp, rp_sync)
```

FIFO memory (`mem[0 : 2^AW-1]`) is written using `wp[AW-1:0]` and read using
`rp[AW-1:0]` — the address bits only. The extra pointer bit (`wp[AW]`,
`rp[AW]`) never addresses memory; it purely tracks how many times each
pointer has wrapped around the circular buffer.

### 4.1 Why pointers can't just be synchronized directly (binary CDC hazard)

A binary counter can flip many bits on a single increment, e.g.
`011111 → 100000`. Because the write and read clocks are asynchronous, the
receiving domain can sample mid-transition and capture a mixture of old and
new bits — producing a pointer value that was never actually valid. That
corrupted pointer can then produce an incorrect `full`/`empty` decision.

### 4.2 Why Gray code fixes it

Consecutive Gray-code values differ by exactly **one bit**. When the
receiving clock samples a Gray-coded pointer mid-transition, it can only
ever see the value just before or just after the change — never a garbled
combination of multiple bits. Gray code does **not** eliminate metastability
(the first synchronizer flip-flop can still go metastable); it only
guarantees that *if* the value is sampled correctly, that value is a valid
one. The two-stage synchronizer is what gives a metastable event time to
resolve before the signal reaches ordinary logic.

### 4.3 Why an extra wrap/phase bit is needed

With only `AW` address bits, `wp == rp` is ambiguous — it could mean the
FIFO is empty, or that the write pointer has lapped the read pointer exactly
once (full). The standard fix is to widen both pointers to `AW+1` bits:

```
pointer = { phase_bit , address_bits }
```

* **Empty:** full pointers match exactly (`rp == wp_sync`) — same address, same phase.
* **Full:** addresses match but the phase bits differ (`wp[AW] != rp_sync[AW]`, `wp[AW-1:0] == rp_sync[AW-1:0]`).

This lets the design use **every** memory location, unlike a naive
"reserve one slot" scheme.

```verilog
// Empty (read domain, compares against synchronized write pointer)
empty = (rp == wp_sync);

// Full (write domain, compares against synchronized read pointer)
full  = (wp[AW] == rp_sync[AW]) ? 1'b0
                                 : (wp[AW-1:0] == rp_sync[AW-1:0]);
```

---

## 5. Module Summary

| Module | Role |
|---|---|
| `asynchronous_fifo` | Top level: memory, both pointer domains, full/empty logic, instantiates the helpers below |
| `dff` | Generic `AW+1`-bit register used to build each 2-stage synchronizer (4 instances total: 2 for the read→write path, 2 for the write→read path) |
| `binary_2_gray` | `b[AW] = a[AW]`; `b[i] = a[i+1] ^ a[i]` for `i = AW-1 … 0` |
| `gray_2_binary` | `b[AW] = a[AW]`; `b[i] = b[i+1] ^ a[i]` for `i = AW-1 … 0` |

All four helper modules are parameterized with `AW` and instantiated with
`#(.AW(AW))` from the top level, so changing the top-level `AW` resizes every
pointer-related submodule automatically.

---

## 6. Testbench (`test_bench.v`)

The testbench is **self-checking**: it drives the DUT and independently
maintains a reference (scoreboard) model, comparing every read against the
data that should come out.

```
Write driver  ──▶  DUT  ──▶  Read driver
                    │
              Scoreboard (reference FIFO)
                    │
              Compare dout vs expected
                    │
                PASS / FAIL + error count
```

Clocking: `wr_clk` = 80 MHz (12.5 ns period), `rd_clk` = 50 MHz (20 ns
period), free-running and fully independent of each other.

### Test scenarios

1. **Basic write/read** — simple ordering check.
2. **Fill** — write the FIFO to capacity and check `full`.
3. **Write while full** — confirms overflow protection (no data corruption, pointer doesn't move).
4. **Drain** — read until `empty`, checking FIFO ordering throughout.
5. **Read while empty** — confirms underflow protection.
6. **Pointer wraparound** — forces the address pointers past their maximum to confirm circular addressing.
7. **Burst traffic** — many writes queued before draining.
8. **Random asynchronous traffic** — concurrent randomized `wr_en`/`rd_en` on both independent clocks; the most representative real-world test.

A small implementation detail worth calling out: after a read clock edge,
the testbench waits `#1` before checking `dout`, because the DUT drives
`dout` with a non-blocking assignment — without the small delay the
testbench could compare against the *previous* cycle's value and report a
false failure.

### Latest full-run result

```
Total writes : 347
Total reads  : 347
Scoreboard count : 0
Errors       : 0
ASYNC FIFO TEST PASSED
```

---

## 7. Timing Constraints & Vivado Results

`asynchronous_fifo.xdc`:

```tcl
create_clock -name wr_clk -period 12.5 [get_ports wr_clk]
create_clock -name rd_clk -period 20.0 [get_ports rd_clk]

# The two FIFO clock domains are asynchronous — do not time paths between them.
set_clock_groups -asynchronous \
    -group [get_clocks wr_clk] \
    -group [get_clocks rd_clk]
```

The `set_clock_groups -asynchronous` constraint is essential: without it,
Vivado's static timing analysis would attempt to time the Gray-code
synchronizer paths *between* `wr_clk` and `rd_clk` as if they were related,
which is meaningless for a true CDC path and would produce false timing
violations (or false confidence) on those paths.

**Final Design Timing Summary:**

| Check | Worst slack | Total negative slack | Failing endpoints |
|---|---|---|---|
| Setup (WNS/TNS) | +9.276 ns | 0.000 ns | 0 |
| Hold (WHS/THS) | +0.203 ns | 0.000 ns | 0 |
| Pulse width (WPWS/TPWS) | +5.750 ns | 0.000 ns | 0 |

Vivado reported: *"All user specified timing constraints are met."*

The small `AW=2, DW=2` configuration (`schematic.pdf`) was used during
synthesis/implementation debugging purely because its tiny size makes the
resulting register/pointer/synchronizer structure easy to read directly in
the schematic viewer; the electrical/timing behavior generalizes to the full
`AW=6, DW=8` configuration.

---

## 8. Design Evolution & Lessons Learned

This section captures how the design actually got here, including the
mistakes that were made and corrected — useful context for anyone extending
this project.

### 8.1 Day 1 — functional-first, binary pointers (intentionally not silicon-safe)

The first working version deliberately used **binary** pointers synchronized
through a plain 2-flop synchronizer, with **one memory location reserved**
to disambiguate `full` vs `empty` (63 usable of 64 locations). This was a
conscious choice to separate "learn the FIFO mechanics" from "harden the
CDC," not an oversight — but it is *not* a CDC-safe architecture, because a
multi-bit binary pointer can present a transiently invalid value to an
asynchronous sampling clock (see §4.1).

**Mistake caught during Day 1 — unbounded testbench wait:**
An early testbench used a `while (ref_count > 0) do_read;` loop. Because the
DUT's `empty` flag can be legitimately (if temporarily) high due to CDC
synchronization latency even while the scoreboard still expects data, this
loop could spin forever printing `READ BLOCKED — FIFO EMPTY`. **Lesson:** a
testbench must never contain an unbounded wait on a signal that a broken (or
merely slow-to-synchronize) DUT might never assert — all such waits were
rewritten with bounded/timeout loops that report a clear timeout error
instead of hanging the simulator.

**Simulator discrepancy noted (Icarus vs. Vivado):** the same testbench that
passed cleanly in Icarus Verilog initially stalled around 100 ns in Vivado
simulation during the fill test. This was correctly treated as a probable
event-scheduling/testbench-timing difference between simulators rather than
assumed to be an RTL bug, and the debugging plan was to instrument the fill
loop with explicit `$display` tracing rather than to prematurely modify the
FIFO architecture.

### 8.2 Day 2 — Gray-code CDC, wrap bit, parameterization, and hardware closure

Day 2 replaced the binary CDC path with the Gray-coded pointer scheme and
added the extra wrap/phase bit described in §4.3, then generalized the
fixed 64×8 design into the `AW`/`DW`-parameterized RTL shown here.

**Mistake caught during Day 2 — stale testbench capacity after an architecture change:**
After widening the FIFO from a 63-usable-of-64 design to a true 64-usable
design (via the wrap bit), the testbench still had
`localparam FIFO_CAPACITY = 63;` and only ever issued 63 fill writes. The
result was a spurious failure — `ERROR: FIFO DID NOT ASSERT FULL` — that
looked like a bug in the new full-detection logic but was actually a
**DUT/testbench specification mismatch**: the DUT was correctly accepting a
64th entry that the old testbench never attempted to write. Updating
`FIFO_CAPACITY` to 64 resolved it. **Lesson:** verification code encodes
assumptions about the DUT's specification, and those assumptions must be
revisited every time the DUT's architecture changes — a passing testbench
against an old spec is not evidence of correctness against a new one.

**Parameterization was deeper than the top-level memory declaration.**
It was not enough to parameterize `mem` with `AW`/`DW`; `AW` had to be
threaded through every submodule (`dff`, `binary_2_gray`, `gray_2_binary`)
and their instantiations (`#(.AW(AW))`), or a change to the top-level
parameter would silently leave stale, fixed-width submodules in place.

**Timing constraints are part of the deliverable, not an afterthought.**
The simulation testbench "knew" the two clock frequencies from the start,
but Vivado only respects clocks that are explicitly declared via `create_clock`
plus an explicit `set_clock_groups -asynchronous` statement — without the
latter, STA has no way to know the two clock-crossing paths should not be
timed as a synchronous path.

### 8.3 Summary of the architectural transformation

```
DAY 1                                  DAY 2
Binary pointer                         Binary pointer
   ↓                                      ↓
2-FF synchronizer                      Binary → Gray
   ↓                                      ↓
Binary comparison                      2-FF synchronizer
(63 of 64 slots usable)                   ↓
                                        Gray → Binary
                                           ↓
                                        Binary comparison
                                        (64 of 64 slots usable,
                                         via extra wrap/phase bit)
```

---

## 9. Known Limitations / Possible Future Work

These were deliberately left out of scope when the project was concluded:

- **Direct Gray-space full/empty comparison.** The current design converts
  the synchronized Gray pointer back to binary before comparing (for
  readability/debuggability during development). A more area/latency-optimal
  version would compare directly in Gray space without the extra
  Gray→Binary converter on the synchronized pointer.
- **No formal verification / CDC linting** (e.g., a dedicated CDC tool run)
  has been performed — only simulation and STA.
- **No I/O timing (`set_input_delay`/`set_output_delay`)** has been defined,
  since no external device/interface timing spec exists yet for `din`/`dout`
  and the enable/reset ports (Vivado's unconstrained-path report currently
  shows 6 no-input-delay and 4 no-output-delay ports for this reason).
- Only one clock-ratio (80 MHz / 50 MHz) and one FPGA target have been
  exercised; different clock ratios, reset-during-traffic scenarios, and
  longer randomized runs would further strengthen confidence in the CDC
  robustness before use in a production design.

---

## 10. How to Simulate

**Icarus Verilog:**
```bash
iverilog -o sim.out asynchronous_fifo.v test_bench.v
vvp sim.out
gtkwave asynchronous_fifo.vcd   # optional waveform viewing
```

**Vivado (GUI or non-project batch mode):** add `asynchronous_fifo.v` as a
design source, `test_bench.v` as a simulation-only source, and
`asynchronous_fifo.xdc` as a constraints source before running synthesis /
implementation / timing analysis.
