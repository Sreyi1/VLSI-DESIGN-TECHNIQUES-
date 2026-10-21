# 6. 4-bit Full Adder

## Aim
Use four 1-bit full-adder stages in a ripple-carry chain. Inputs and outputs are vectors for readability.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


