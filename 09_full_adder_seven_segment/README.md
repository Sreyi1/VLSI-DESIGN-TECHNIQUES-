# 9. Full Adder with Seven-segment Output

## Aim
Add two 4-bit unsigned operands and carry-in, then display the low hexadecimal digit of the 5-bit sum. Carry-out is provided separately.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```


