# 12. 4-bit D Flip-flop

## Aim
Four D flip-flops grouped into a 4-bit register with asynchronous reset.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


