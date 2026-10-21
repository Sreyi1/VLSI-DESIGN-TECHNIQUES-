# 17. 4-bit Up/Down Counter

## Aim
A modulo-16 counter. up_down=1 increments and up_down=0 decrements on each enabled tick.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


