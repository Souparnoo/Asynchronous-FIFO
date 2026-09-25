# Asynchronous FIFO --- Day 2 Report

**Project:** Asynchronous FIFO Design in Verilog\
**Day:** 2\
**Date:** 25 September 2026\
**Status:** Final parameterized FIFO implementation verified in simulation and implemented in Vivado; project concluded.

------------------------------------------------------------------------

## 1. Day 2 Overview

Day 1 established the basic functional architecture of the asynchronous
FIFO:

- 8-bit data
- 64 memory locations
- 63 usable FIFO entries
- 80 MHz write clock
- 50 MHz read clock
- binary read/write pointers
- two-stage synchronization of the opposite pointer
- self-checking testbench

The main limitation of the Day 1 architecture was that the binary pointers
were being synchronized directly across asynchronous clock domains. The
project was therefore continued on Day 2 to understand and implement the
more appropriate Gray-code CDC architecture.

The Day 2 work progressed through several stages:

```text
Day 1 binary-pointer FIFO
        ↓
Understand why binary CDC is unsafe
        ↓
Implement Binary → Gray conversion
        ↓
Synchronize Gray pointers through 2 DFF stages
        ↓
Implement Gray → Binary conversion
        ↓
Introduce an extra wrap/phase bit
        ↓
Use all 64 FIFO locations
        ↓
Generalize the design using AW and DW parameters
        ↓
Verify the parameterized FIFO
        ↓
Synthesize and implement in Vivado
        ↓
Add XDC clock constraints
        ↓
Check setup, hold and pulse-width timing
        ↓
FINAL FIFO PROJECT
```

The Day 1 report deliberately left Gray-code CDC, the extra wrap bit,
stronger CDC verification, and hardware implementation as future work.
Those items became the main focus of Day 2. The Day 1 report also recorded
that the initial implementation was intentionally a functional learning
version rather than the final CDC architecture. fileciteturn5file0L1331-L1359

------------------------------------------------------------------------

# 2. Starting Point From Day 1

The original Day 1 FIFO used:

```text
Data width       = 8 bits
Memory depth     = 64
Usable capacity  = 63
Write clock      = 80 MHz
Read clock       = 50 MHz
Pointer          = 6-bit binary
```

The reason for using only 63 entries was that the six-bit read and write
pointers did not contain separate wrap information.

With only the pointer values:

```text
wp == rp
```

could mean either:

```text
FIFO EMPTY
```

or, after a complete circular traversal:

```text
FIFO FULL
```

Therefore one memory location was intentionally left unused.

This was a useful first architecture for understanding pointer movement,
full/empty generation, and verification, but Day 2 aimed to remove this
limitation and build a proper Gray-coded pointer crossing.

------------------------------------------------------------------------

# 3. Why Binary Pointers Should Not Simply Be Synchronized

The first major conceptual question of Day 2 was:

> Why can't the binary pointer simply be passed through the two
> synchronizer flip-flops?

The problem is that several bits of a binary counter can change on one
increment.

For example:

```text
Binary:

011111
100000
```

Six bits change simultaneously.

The write and read clocks are asynchronous, so the receiving clock can
sample the pointer during this transition.

Because individual flip-flops and routing paths have finite propagation
delays, the receiving domain can potentially observe a mixture of old and
new bits.

For example, instead of observing either:

```text
011111
```

or:

```text
100000
```

it could temporarily observe an invalid combination.

That invalid pointer could cause incorrect `full` or `empty` decisions.

This led to the central Day 2 CDC concept:

> The synchronizer reduces metastability risk, but the representation
> crossing the asynchronous boundary must also be suitable for safe
> sampling.

------------------------------------------------------------------------

# 4. Gray Code

Gray code was therefore introduced for the pointer crossing.

The important property used in this project is:

> Consecutive Gray-code values differ by only one bit.

A binary counter can have a transition such as:

```text
011111 → 100000
```

where many bits change.

The corresponding Gray representation changes only one bit.

Therefore, when the receiving clock samples a pointer transition, it cannot
capture a mixture of multiple independently changing binary bits in the
same way.

The architecture became:

```text
Binary pointer
      ↓
Binary → Gray
      ↓
2-stage synchronizer
      ↓
Gray pointer in other clock domain
      ↓
Gray → Binary
      ↓
Full / Empty comparison
```

An important distinction was also understood:

```text
Gray code does NOT remove metastability.
```

The first synchronizer flip-flop can still experience metastability.

The Gray representation limits a pointer increment to one changing bit,
while the two-stage synchronizer provides additional time for the
metastability to settle before the synchronized pointer is used by normal
logic.

------------------------------------------------------------------------

# 5. Binary-to-Gray Conversion

A dedicated `binary_2_gray` module was implemented.

For a pointer:

```text
a[AW:0]
```

the Gray conversion follows:

```text
gray[MSB] = binary[MSB]

gray[i] = binary[i+1] XOR binary[i]
```

The implementation used a generate loop so that the conversion could later
be parameterized.

The initial six-bit version was debugged and corrected so that the generate
loop covered the correct bit range.

The generalized structure became:

```verilog
module binary_2_gray #(parameter AW = 6)(
    input  [AW:0] a,
    output [AW:0] b
);

    assign b[AW] = a[AW];

    generate
        for(i = AW-1; i >= 0; i = i-1) begin: loop
            assign b[i] = a[i+1] ^ a[i];
        end
    endgenerate

endmodule
```

------------------------------------------------------------------------

# 6. Gray-to-Binary Conversion

A reverse conversion module was also implemented.

The relationship is:

```text
binary[MSB] = gray[MSB]

binary[i] = binary[i+1] XOR gray[i]
```

The resulting binary pointer is then used for the project's full and empty
comparisons.

This was an intentional design choice during Day 2.

The project did not immediately switch to the standard direct Gray-space
full/empty comparison formula. Instead, the synchronized Gray pointer was
converted back to binary because this made the pointer meaning and the
full/empty logic easier to understand and verify.

Therefore the final conceptual path is:

```text
Binary
  ↓
Gray
  ↓
2FF synchronization
  ↓
Binary
  ↓
comparison
```

------------------------------------------------------------------------

# 7. First Gray-Code CDC Verification

After implementing the six-bit Gray conversion and the corresponding
two-stage CDC structure, the FIFO was simulated again.

The functional test result was:

```text
Total writes : 347
Total reads  : 347
Scoreboard count : 0
Errors       : 0
ASYNC FIFO TEST PASSED
```

This was an important milestone because it demonstrated that the Gray-coded
pointer crossing could replace the original binary-pointer CDC while
preserving FIFO data ordering under asynchronous clocks.

------------------------------------------------------------------------

# 8. The Extra Wrap Bit

The next major architectural change was introducing a seventh pointer bit
for the 64-entry FIFO.

The reasoning was:

```text
64 memory locations
        ↓
log2(64) = 6 address bits
        ↓
need another bit to distinguish pointer phase
        ↓
7-bit pointer
```

Therefore:

```text
Pointer = {wrap_bit, address}
```

or:

```text
[6]   = wrap / phase bit
[5:0] = memory address
```

The pointer sequence becomes:

```text
0000000
0000001
0000010
...
0111111
1000000
1000001
...
1111111
0000000
```

The important transition is:

```text
0111111
   ↓
1000000
```

The memory address goes:

```text
63 → 0
```

while the wrap/phase bit changes:

```text
0 → 1
```

After another complete 64-position traversal:

```text
1111111 → 0000000
```

the phase bit changes again.

------------------------------------------------------------------------

# 9. Why the Extra Wrap Bit Allows 64 Entries

With the old six-bit pointer:

```text
wp == rp
```

was ambiguous.

With the seven-bit pointer:

```text
[wrap][address]
```

the two situations become distinguishable.

### Empty

The complete pointers are equal:

```verilog
empty = (rp == wp_sync);
```

For example:

```text
Read pointer:
0 000000

Write pointer:
0 000000
```

Both address and phase are equal.

### Full

The memory addresses are equal, but the wrap bits are different:

```text
wp[AW] != rp_sync[AW]
```

and:

```text
wp[AW-1:0] == rp_sync[AW-1:0]
```

Therefore the final full condition is conceptually:

```verilog
full = (wp[AW] != rp_sync[AW]) &&
       (wp[AW-1:0] == rp_sync[AW-1:0]);
```

The actual RTL used a ternary form equivalent to this:

```verilog
full = (wp[AW] == rp_sync[AW]) ? 0 :
       wp[AW-1:0] == rp_sync[AW-1:0];
```

This allows all 64 memory locations to be used.

------------------------------------------------------------------------

# 10. Important Debugging Event: 63 vs 64 Entries

After changing the DUT from the old six-bit/63-entry architecture to the
new seven-bit/64-entry architecture, the existing testbench initially
failed.

The testbench still contained:

```verilog
localparam FIFO_CAPACITY = 63;
```

and Test 2 therefore performed only 63 writes.

The DUT, however, was now a true 64-entry FIFO.

The result was:

```text
ERROR: FIFO DID NOT ASSERT FULL
full = 0
```

This was not a failure of the new full logic.

It was a **DUT/testbench specification mismatch**.

The new DUT correctly allowed the 64th entry.

Therefore the testbench was updated from:

```verilog
FIFO_CAPACITY = 63;
```

to:

```verilog
FIFO_CAPACITY = 64;
```

After this correction, the fill test matched the new architecture.

This was an important verification lesson:

> When the DUT specification changes, the reference model and testbench
> assumptions must change with it.

The later failures seen before correcting the testbench were cascading
failures caused by the FIFO not being drained according to the new
64-entry expectation.

------------------------------------------------------------------------

# 11. Final Seven-Bit Pointer Architecture

The write pointer became:

```verilog
reg [6:0] wp;
```

and the read pointer:

```verilog
reg [6:0] rp;
```

The memory address still uses only the lower six bits:

```verilog
mem[wp[5:0]]
```

and:

```verilog
mem[rp[5:0]]
```

The full pointer has seven bits because of the extra phase bit.

The pointer rollover condition became:

```verilog
if (wp == (1 << (AW+1))-1)
    wp <= 0;
else
    wp <= wp + 1;
```

and similarly for `rp`.

This correction was necessary because the pointer is `AW+1` bits wide.

For `AW=6`:

```text
AW+1 = 7

maximum pointer value = 2^7 - 1
                      = 127
```

The previous Day 1 rollover at 63 would have reset the entire pointer
before the wrap bit could perform its intended function.

------------------------------------------------------------------------

# 12. Final CDC Structure

The final pointer-crossing architecture became:

```text
                 WRITE CLOCK DOMAIN
                        │
                        ▼
                  Binary wp
                        │
                        ▼
                  Binary → Gray
                        │
                        ▼
                    wp_gray
                        │
                        ▼
                ┌──────────────┐
                │  2 × DFF     │
                │ rd_clk side  │
                └──────────────┘
                        │
                        ▼
                  wp_gray_sync
                        │
                        ▼
                  Gray → Binary
                        │
                        ▼
                     wp_sync
                        │
                        ▼
                  EMPTY logic


                 READ CLOCK DOMAIN
                        │
                        ▼
                  Binary rp
                        │
                        ▼
                  Binary → Gray
                        │
                        ▼
                    rp_gray
                        │
                        ▼
                ┌──────────────┐
                │  2 × DFF     │
                │ wr_clk side  │
                └──────────────┘
                        │
                        ▼
                  rp_gray_sync
                        │
                        ▼
                  Gray → Binary
                        │
                        ▼
                     rp_sync
                        │
                        ▼
                   FULL logic
```

The two DFF stages were implemented separately in both directions.

------------------------------------------------------------------------

# 13. Parameterization

After the fixed 64×8 FIFO was working, the next objective was to generalize
the design.

Two parameters were introduced:

```verilog
parameter AW = 6,
          DW = 8
```

The meaning was intentionally chosen as:

```text
AW = number of FIFO address bits
DW = data width
```

Therefore:

```text
FIFO depth = 2^AW
```

For example:

```text
AW = 6 → depth = 64
AW = 5 → depth = 32
AW = 7 → depth = 128
```

The pointer width is always:

```text
AW + 1
```

because one additional bit is used for the wrap/phase information.

------------------------------------------------------------------------

# 14. Parameterized Memory

The original fixed memory:

```verilog
reg [7:0] mem [0:63];
```

was generalized to:

```verilog
reg [DW-1:0] mem [0:(1<<AW)-1];
```

Therefore:

```text
DW controls the word width.
AW controls the number of words.
```

For:

```text
AW = 6
DW = 8
```

the memory becomes:

```text
64 × 8
```

For:

```text
AW = 2
DW = 2
```

the memory becomes:

```text
4 × 2
```

The latter small configuration was useful later for Vivado implementation and
timing inspection.

------------------------------------------------------------------------

# 15. Parameterized Pointer

The pointer declaration became:

```verilog
reg [AW:0] wp, rp;
```

This automatically gives:

```text
AW = 6 → 7-bit pointer
AW = 5 → 6-bit pointer
AW = 7 → 8-bit pointer
```

The memory address is:

```verilog
wp[AW-1:0]
```

or:

```verilog
rp[AW-1:0]
```

while:

```verilog
wp[AW]
rp[AW]
```

are the wrap/phase bits.

------------------------------------------------------------------------

# 16. Propagating the Parameter to Submodules

A subtle parameterization issue was found during implementation.

The top-level FIFO had:

```verilog
module asynchronous_fifo #(parameter AW = 6, DW = 8)
```

but the helper modules also needed to know `AW`.

Therefore each helper module was parameterized:

```verilog
module dff #(parameter AW = 6)
```

```verilog
module gray_2_binary #(parameter AW = 6)
```

```verilog
module binary_2_gray #(parameter AW = 6)
```

and the instantiations explicitly passed the top-level value:

```verilog
dff #(.AW(AW)) ...
```

```verilog
gray_2_binary #(.AW(AW)) ...
```

```verilog
binary_2_gray #(.AW(AW)) ...
```

This ensures that changing the FIFO's `AW` changes the width of every
pointer-related submodule as well.

------------------------------------------------------------------------

# 17.  Verification After the 64-Entry Change

The important verification result after updating the testbench to match the
new 64-entry architecture was a passing simulation.

The project therefore moved from the old:

```text
64 memory locations
63 usable
```

architecture to:

```text
64 memory locations
64 usable
```

with the extra pointer phase bit.

The functional testbench continued to use:

- asynchronous write/read clocks
- scoreboard/reference FIFO
- basic transactions
- full testing
- write-while-full testing
- drain testing
- read-while-empty testing
- pointer wraparound
- burst traffic
- random traffic
- error counting
- final PASS/FAIL reporting

The scoreboard was particularly important because it verified that the
output sequence remained identical to the order in which accepted writes
entered the FIFO.

------------------------------------------------------------------------

# 18. Vivado Implementation

After functional verification, the project was moved into Vivado.

A very small configuration was used during the implementation/debugging
stage:

```text
AW = 2
DW = 2
```

This gives:

```text
Depth      = 2^2 = 4
Data width = 2 bits
Pointer    = AW+1 = 3 bits
```

Using a tiny configuration made the synthesized structure easier to
inspect.

The synthesized schematic showed the separate clock domains, pointer
registers, synchronizer stages, memory/register implementation, output
registers, and FIFO status outputs.

The synthesized schematic also showed the separate `rd_clk` and `wr_clk`
clock infrastructure and the register structures corresponding to the
pointer and synchronization logic. fileciteturn4file0L8-L25
The memory was implemented as registers in the small configuration rather
than as a large block-memory structure; the schematic includes the
individual memory register elements. fileciteturn4file0L59-L89

------------------------------------------------------------------------

# 19. Timing Constraints Result

After adding the XDC and rerunning the Vivado timing analysis, the earlier
clock-related constraint problems were resolved.

The remaining report showed:

```text
no_input_delay   = 6
no_output_delay  = 4
```

These were not treated as reasons to invent arbitrary external interface
timing numbers.

The FIFO was being studied primarily as an internal CDC/RTL design, and no
external device timing specification had been defined for the input and
output ports.

The important result was that the actual user-specified clock timing
constraints were being recognized.

------------------------------------------------------------------------

# 20. Final Vivado Timing Result

The final Design Timing Summary was:

```text
SETUP
Worst Negative Slack (WNS)       = 9.276 ns
Total Negative Slack (TNS)       = 0.000 ns
Number of Failing Endpoints      = 0

HOLD
Worst Hold Slack (WHS)           = 0.203 ns
Total Hold Slack (THS)           = 0.000 ns
Number of Failing Endpoints      = 0

PULSE WIDTH
Worst Pulse Width Slack (WPWS)   = 5.750 ns
Total Pulse Width Negative Slack = 0.000 ns
Number of Failing Endpoints      = 0
```

Vivado reported:

```text
All user specified timing constraints are met.
```

This was the final implementation milestone of Day 2.

The result is particularly useful because the project did not stop at
simulation. The RTL was synthesized and implemented, clock constraints were
provided, and the resulting design met the specified setup, hold, and pulse
width timing checks.

------------------------------------------------------------------------

# 21. Final RTL Architecture

The completed architecture can now be summarized as:

```text
                         ASYNCHRONOUS FIFO
                              │
              ┌───────────────┴───────────────┐
              │                               │
       WRITE CLOCK DOMAIN              READ CLOCK DOMAIN
              │                               │
          Binary WP                       Binary RP
              │                               │
              ▼                               ▼
       Binary → Gray                    Binary → Gray
              │                               │
              ▼                               ▼
       2-FF synchronizer                2-FF synchronizer
              │                               │
              ▼                               ▼
        Gray pointer                     Gray pointer
        in read domain                  in write domain
              │                               │
              ▼                               ▼
        Gray → Binary                    Gray → Binary
              │                               │
              ▼                               ▼
         WP synchronized                 RP synchronized
              │                               │
              │                               │
              ▼                               ▼
          EMPTY logic                    FULL logic
```

The memory addressing remains local to each pointer:

```text
Write address = wp[AW-1:0]
Read address  = rp[AW-1:0]
```

while the additional pointer bit carries the phase information needed to
distinguish full from empty.

------------------------------------------------------------------------

# 22. Final Parameter Relationships

The final design uses:

```verilog
parameter AW = 6,
          DW = 8
```

with the following hardware relationships:

```text
FIFO depth      = 2^AW
Memory address  = AW bits
Pointer width   = AW + 1 bits
Data width      = DW bits
```

For the original configuration:

```text
AW = 6
DW = 8

Depth           = 64
Address         = 6 bits
Pointer         = 7 bits
Wrap bit        = 1 bit
Data            = 8 bits
```

For the small Vivado implementation configuration:

```text
AW = 2
DW = 2

Depth           = 4
Address         = 2 bits
Pointer         = 3 bits
Data            = 2 bits
```

This demonstrated that the RTL was no longer tied to hard-coded:

```text
64
63
8
6
7
```

values.

------------------------------------------------------------------------

# 23. Important Lessons From Day 2

## 24.1 CDC is not just about adding two flip-flops

The Day 2 implementation made the distinction clear:

```text
2-FF synchronizer
```

and:

```text
safe multi-bit representation
```

are separate considerations.

A multi-bit binary counter can change several bits at once. Gray coding
makes the pointer transition suitable for asynchronous sampling before it
enters the synchronizer.

------------------------------------------------------------------------

## 24.2 The wrap bit solves the full/empty ambiguity

The extra pointer bit is not another memory address bit.

It represents pointer phase.

Therefore:

```text
[address bits] + [phase bit]
```

allows the design to distinguish:

```text
same address + same phase → EMPTY
same address + different phase → FULL
```

This allows all memory locations to be used.

------------------------------------------------------------------------

## 24.3 The testbench must evolve with the architecture

The 63-entry testbench was correct for the Day 1 design.

It became incorrect after the FIFO was upgraded to a 64-entry
wrap-bit architecture.

The failure:

```text
FIFO DID NOT ASSERT FULL
```

was therefore a useful debugging event.

It showed that verification infrastructure has its own specification and
must be updated whenever the DUT architecture changes.

------------------------------------------------------------------------

## 24.4 Parameterization is more than replacing constants

A design is not truly parameterized just because the top-level memory uses
`AW`.

The parameter must propagate through:

```text
Memory
Pointer
Gray converter
Gray-to-binary converter
Synchronizer DFFs
Full logic
Empty logic
Testbench assumptions
```

The helper-module parameter propagation was therefore an important part of
Day 2.

------------------------------------------------------------------------

## 24.5 Timing constraints are part of hardware design

The simulation testbench already knew:

```text
wr_clk = 80 MHz
rd_clk = 50 MHz
```

but Vivado needed explicit constraints.

The XDC therefore became part of the final project rather than an optional
extra file.

The final report showed:

```text
WNS  = 9.276 ns
WHS  = 0.203 ns
TNS  = 0
THS  = 0
WPWS = 5.750 ns
```

with zero failing endpoints.

------------------------------------------------------------------------

# 25. Final Project Files

The final project consists conceptually of:

```text
asynchronous_fifo.v
        │
        └── Parameterized FIFO RTL

test_bench.v
        │
        └── Functional/self-checking verification

asynchronous_fifo.xdc
        │
        └── Clock definitions + asynchronous clock relationship

synthesized schematic
        │
        └── Hardware implementation view
```

The RTL contains the final `AW`/`DW` parameterized FIFO, the testbench
verifies its functional behavior, and the XDC provides the timing
information required by Vivado.

------------------------------------------------------------------------

# 26. Final Project Status

At the end of Day 2:

```text
                    ASYNCHRONOUS FIFO

Functional simulation                  PASS
Gray-code CDC                          IMPLEMENTED
2-stage synchronizers                  IMPLEMENTED
Wrap/phase bit                         IMPLEMENTED
64-entry capacity                      IMPLEMENTED
Binary full comparison                 IMPLEMENTED
Binary empty comparison                IMPLEMENTED
Parameter AW                           IMPLEMENTED
Parameter DW                           IMPLEMENTED
Random/scoreboard verification         PASS
Vivado synthesis                       COMPLETED
Vivado implementation                  COMPLETED
Clock constraints                      COMPLETED
Setup timing                           PASS
Hold timing                            PASS
Pulse-width timing                     PASS
Failing timing endpoints               0
```

Final timing:

```text
WNS  = +9.276 ns
WHS  = +0.203 ns
WPWS = +5.750 ns

TNS  = 0
THS  = 0
TPWS = 0
```

Vivado reported:

```text
All user specified timing constraints are met.
```

------------------------------------------------------------------------

# 27. Day 2 Conclusion

Day 2 transformed the original learning-oriented binary-pointer FIFO into
a parameterized asynchronous FIFO with Gray-coded CDC and an explicit
pointer phase bit.

The most important architectural transformation was:

```text
DAY 1

Binary pointer
      ↓
2-FF synchronization
      ↓
Binary comparison
```

to:

```text
DAY 2

Binary pointer
      ↓
Gray conversion
      ↓
2-FF synchronization
      ↓
Gray → Binary
      ↓
Binary comparison
```

and simultaneously:

```text
6-bit pointer
      ↓
7-bit pointer
      ↓
{wrap bit, address}
```

The project also moved beyond pure simulation into actual FPGA tool flow:

```text
RTL
 ↓
Simulation
 ↓
Verification
 ↓
Parameterization
 ↓
Synthesis
 ↓
XDC timing constraints
 ↓
Implementation
 ↓
STA
```

The final implementation met all user-specified clock timing constraints
with zero setup, hold, and pulse-width timing failures.

The project is intentionally being stopped at this point. Further possible
improvements such as direct Gray-space full detection, additional formal
verification, or further optimization are outside the scope of this
completed Day 2 project.

**Day 2 ends here. The asynchronous FIFO project is complete.**

------------------------------------------------------------------------
