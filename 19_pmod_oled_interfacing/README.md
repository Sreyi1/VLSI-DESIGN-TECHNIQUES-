# 19. Pmod OLED Interfacing (SPI Transport)

## Aim
Provide a reusable SPI byte transmitter for an SSD1331-style serial OLED Pmod. A complete display also needs the controller-specific initialization command sequence, reset timing and drawing commands; those are board/display-specific.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```

This is the SPI byte transport layer only, not a full OLED application. Connect sclk/mosi/cs_n/dc and reset/power pins using the exact Pmod OLED and FPGA board pinout documentation.
