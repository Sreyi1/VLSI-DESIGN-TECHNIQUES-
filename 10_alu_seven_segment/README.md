# 10. ALU with Seven-segment Output

## Aim
Combine the 4-bit ALU and a single active-low seven-segment digit. Only the least-significant hexadecimal digit is displayed; full 8-bit result remains available as a signal.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


