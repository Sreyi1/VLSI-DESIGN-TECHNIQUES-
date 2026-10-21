# 8. Seven-segment Hex Decoder

## Aim
Decode a 4-bit value to an active-low seven-segment pattern for a common-anode display. Segment order is {a,b,c,d,e,f,g}; verify board pin order before wiring.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


