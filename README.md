# VLSI Design Techniques — GitHub-ready experiments

This repository organizes the 22 experiments listed in the uploaded internship report into separate folders. Each folder includes an aim/explanation, Verilog source, and a testbench for simulation where practical.

## Experiments
1. [`01_full_adder`](01_full_adder/README.md) — Full Adder
2. [`02_full_adder_two_half_adders`](02_full_adder_two_half_adders/README.md) — Full Adder Using Two Half Adders
3. [`03_full_subtractor`](03_full_subtractor/README.md) — Full Subtractor
4. [`04_full_subtractor_two_half_subtractors`](04_full_subtractor_two_half_subtractors/README.md) — Full Subtractor Using Two Half Subtractors
5. [`05_mux4_to_1_from_mux2_to_1`](05_mux4_to_1_from_mux2_to_1/README.md) — 4:1 MUX Using 2:1 MUXes
6. [`06_four_bit_ripple_carry_adder`](06_four_bit_ripple_carry_adder/README.md) — 4-bit Full Adder
7. [`07_arithmetic_logic_unit`](07_arithmetic_logic_unit/README.md) — 4-bit ALU
8. [`08_seven_segment_display`](08_seven_segment_display/README.md) — Seven-segment Hex Decoder
9. [`09_full_adder_seven_segment`](09_full_adder_seven_segment/README.md) — Full Adder with Seven-segment Output
10. [`10_alu_seven_segment`](10_alu_seven_segment/README.md) — ALU with Seven-segment Output
11. [`11_d_flip_flop`](11_d_flip_flop/README.md) — D Flip-flop
12. [`12_four_bit_d_flip_flop`](12_four_bit_d_flip_flop/README.md) — 4-bit D Flip-flop
13. [`13_t_flip_flop`](13_t_flip_flop/README.md) — T Flip-flop
14. [`14_sr_flip_flop`](14_sr_flip_flop/README.md) — SR Flip-flop
15. [`15_jk_flip_flop`](15_jk_flip_flop/README.md) — JK Flip-flop
16. [`16_up_counter`](16_up_counter/README.md) — 4-bit Up Counter with Clock Divider
17. [`17_up_down_counter`](17_up_down_counter/README.md) — 4-bit Up/Down Counter
18. [`18_alu_using_pmod_keypad`](18_alu_using_pmod_keypad/README.md) — ALU Using Pmod Keypad
19. [`19_pmod_oled_interfacing`](19_pmod_oled_interfacing/README.md) — Pmod OLED Interfacing (SPI Transport)
20. [`20_traffic_light_oled_interfacing`](20_traffic_light_oled_interfacing/README.md) — Traffic Light with OLED Interfacing
21. [`21_alu_keypad_using_oled`](21_alu_keypad_using_oled/README.md) — ALU Keypad Using OLED
22. [`22_matrix_2x2_pynq_z2`](22_matrix_2x2_pynq_z2/README.md) — 2×2 Matrix Multiplication on PYNQ-Z2

## Simulating
Install Icarus Verilog, then enter an experiment folder and run:

```sh
iverilog -g2012 -o sim.out src/*.v testbench/*.v
vvp sim.out
```

Some projects are hardware integrations (Pmod keypad/OLED and PYNQ-Z2). Their HDL core is included, but board pin constraints, exact OLED initialization sequence, Vivado block design, AXI wrapper and board-specific register map must be matched to the physical setup before programming the FPGA. Those items cannot be inferred reliably from the report alone.

## Source and correctness notes
- The source PDF was used as the project list and terminology reference. Several simple designs were cleaned up to remove syntax inconsistencies and add deterministic reset/default behavior.
- The 2×2 matrix design uses 17-bit result elements to avoid overflow/truncation in the report’s 8-bit result elements.
- The up-counter uses a clock-enable tick rather than using a divided fabric signal as a generated clock.
- Seven-segment outputs are active-low and use the `{a,b,c,d,e,f,g}` convention; verify the exact board constraints and digit polarity.
- The OLED folder contains an SPI byte transmitter, not a complete SSD1331 driver. The traffic-light and keypad/OLED folders include logic cores, with display rendering to be integrated against the correct OLED controller driver.
- Simulation testbenches are provided, but this package has not been run through Vivado synthesis or on the physical PYNQ-Z2 board.
