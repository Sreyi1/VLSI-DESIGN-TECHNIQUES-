# 15. JK Flip-flop

## Aim
Clocked JK flip-flop with asynchronous reset: 00 hold, 01 reset, 10 set, 11 toggle.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


