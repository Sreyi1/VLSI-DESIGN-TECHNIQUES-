# 16. 4-bit Up Counter with Clock Divider

## Aim
A 4-bit modulo-16 up-counter driven by a clock enable generated from a configurable input-clock divider. A clock enable is preferred to creating a separate fabric clock.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


