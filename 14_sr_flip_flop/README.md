# 14. SR Flip-flop

## Aim
Clocked SR flip-flop with asynchronous reset. S=R=1 is an invalid condition and is represented as X in simulation.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


