# 7. 4-bit ALU

## Aim
A combinational ALU supporting addition, subtraction, multiplication and unsigned division. Division by zero returns zero (explicitly defined here).

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


