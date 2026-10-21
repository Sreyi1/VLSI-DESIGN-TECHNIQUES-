# 21. ALU Keypad Using OLED

## Aim
Combine keypad-entered operands/operators with an arithmetic result register and a display-facing 8-bit result bus. The OLED rendering layer consumes result/result_valid and must be connected to a controller-specific SSD1331 driver.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```

The project provides a tested input/arithmetic core. To render text/numbers on the OLED, connect result/result_valid to the OLED command/drawing controller; the PDF’s OLED code is controller- and pin-specific.
