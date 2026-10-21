# 20. Traffic Light with OLED Interfacing

## Aim
Implement a timed red-yellow-green finite-state machine and expose an RGB565 fill color for an OLED drawing engine. OLED rendering/initialization is kept as a separate SPI/display layer.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```

Tick parameters are counts of input clock cycles for simulation convenience. For real seconds, derive counts from the actual FPGA clock frequency; do not copy large timing constants without confirming the board clock.
