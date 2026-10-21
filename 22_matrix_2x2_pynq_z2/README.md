# 22. 2×2 Matrix Multiplication on PYNQ-Z2

## Aim
Multiply two 2×2 matrices whose four elements are unsigned 8-bit values packed into 32-bit words. The Verilog module returns four 17-bit products/sums packed into a 68-bit output to avoid the truncation present in the report’s 8-bit per-result-element version.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```

Packing convention: A={a00,a01,a10,a11} and B={b00,b01,b10,b11}, each element 8 bits. Result packing is {r00,r01,r10,r11}, each 17 bits. The PYNQ Python script needs matching AXI register widths/addresses; it is not included as a drop-in driver because the report’s IP register map and IP name are design-specific.
