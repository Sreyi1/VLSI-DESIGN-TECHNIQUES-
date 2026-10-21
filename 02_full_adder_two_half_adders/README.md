# 2. Full Adder Using Two Half Adders

## Aim
Build a full adder by cascading two half adders and OR-ing their carry outputs.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


