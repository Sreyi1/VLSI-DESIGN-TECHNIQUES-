# 13. T Flip-flop

## Aim
Positive-edge-triggered T flip-flop. T=1 toggles state; T=0 holds the previous state.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


