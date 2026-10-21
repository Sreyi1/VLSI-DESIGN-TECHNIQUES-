# 1. Full Adder

## Aim
Implement a 1-bit full adder. The sum is the XOR of A, B and carry-in; carry-out is the majority function.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


