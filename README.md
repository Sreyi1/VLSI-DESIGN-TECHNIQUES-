VLSI Design Techniques
RTL and FPGA projects completed during the VLSI Design Techniques Internship at RSET, in collaboration with the C2S project.

The experiments cover combinational logic, arithmetic circuits, multiplexers, an ALU, seven-segment display interfacing, sequential logic, counters, keypad/OLED interfacing, and matrix operations using the PYNQ-Z2 platform.
Development Environment
- HDL: Verilog
- Design and simulation: Xilinx Vivado
- FPGA hardware: Real Digital Boolean board (Spartan-7 FPGA)
- Hardware platform projects: PYNQ-Z2, where applicable
Experiments
1. Full Adder
2. Full Adder Using Two Half Adders
3. Full Subtractor
4. Full Subtractor Using Two Half Subtractors
5. 4:1 Multiplexer Using 2:1 Multiplexers
6. 4-Bit Full Adder
7. Arithmetic Logic Unit (ALU)
8. Seven-Segment Display
9. Full Adder Using Seven-Segment Display
10. ALU Using Seven-Segment Display
11. D Flip-Flop
12. 4-Bit D Flip-Flop
13. T Flip-Flop
14. SR Flip-Flop
15. JK Flip-Flop
16. Up Counter
17. Up-Down Counter
18. ALU Using Pmod Keypad
19. Pmod OLED Interfacing
20. Traffic Light With OLED Interfacing
21. ALU Keypad Using OLED
22. 2×2 Matrix Using PYNQ-Z2 Board

Each experiment is organized in its own folder with its Verilog design, testbench where applicable, and a README describing the objective and operation.
Working With the Projects in Vivado
1. Open Xilinx Vivado.
2. Create or open a Vivado project for the experiment you want to run.
3. Add the Verilog design files as Design Sources.
4. Add the corresponding testbench files as Simulation Sources.
5. For FPGA implementation, select the target board/device and add the relevant .xdc constraints.
6. Use Run Simulation → Run Behavioral Simulation to simulate the design.
7. For hardware testing, run synthesis and implementation, generate the bitstream, and program the FPGA board.
