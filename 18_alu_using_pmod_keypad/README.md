# 18. ALU Using Pmod Keypad

## Aim
Scan a 4x4 matrix keypad and use hexadecimal keys A/B/C/D as add/subtract/multiply/divide. This is the logic-layer version of the report project; add board-specific XDC constraints and input debounce for reliable hardware use.

## Files
- `src/`: synthesizable design source.
- `testbench/`: simulation testbench where applicable.

## How to simulate
With Icarus Verilog installed, run from this folder:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```

Keypad key map follows the report’s convention: digits 0–9 and A–D as operators. This scanner emits key_valid when a pressed row is observed; real switches need debounce/one-shot handling to avoid repeated key events.
