# 3. Full Subtractor

## Aim
Subtract B and borrow-in from A. Difference is XOR; borrow-out is asserted when A is too small.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


