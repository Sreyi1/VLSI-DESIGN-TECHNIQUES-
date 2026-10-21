# 5. 4:1 MUX Using 2:1 MUXes

## Aim
Construct a 4-to-1 multiplexer from three 2-to-1 multiplexers. Select 00, 01, 10, 11 chooses d0, d1, d2, d3.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


