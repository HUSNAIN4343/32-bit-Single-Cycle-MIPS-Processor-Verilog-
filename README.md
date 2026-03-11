# 32-bit Single-Cycle MIPS Processor (Verilog)

## Overview
This project implements a simplified 32-bit single-cycle MIPS processor using Verilog HDL.
The design demonstrates core concepts of computer organization and architecture, including
instruction fetch, decode, execute, and write-back within a single clock cycle.
The processor is intentionally simplified to focus on datapath design, control logic,
and RTL-level understanding of CPU operation.


## Project Objectives
The objectives of this project are:

- Design a functional single-cycle MIPS processor using Verilog HDL
- Implement the complete instruction execution cycle
- Perform arithmetic and logical operations using a modular ALU
- Understand interaction between control unit, register file, and datapath
- Verify processor functionality through simulation and testbench


## Supported Instructions
The processor supports the following MIPS-style operations:

- ADD: Adds the contents of registers R0 and R1
- SUB: Subtracts R1 from R0
- AND: Performs bitwise AND between R0 and R1

All results are written back to the ACC (Accumulator) register.

## Processor Architecture
The processor follows a single-cycle architecture, meaning each instruction is completed
in one clock cycle. The datapath includes instruction fetch, decode, execution, and write-back.


## Key Components

1. Program Counter (PC)
   Maintains the address of the current instruction and increments to fetch the next instruction.

2. Instruction Memory
   Stores up to 256 instructions and outputs the instruction based on the program counter.

3. Instruction Decoder
   Extracts opcode and operand fields from the fetched instruction.

4. Control Unit
   Decodes the opcode and generates control signals such as ALU operation select and register write enable.

5. Register File
   Contains three 32-bit registers:
   - R0 and R1: General-purpose registers
   - ACC: Accumulator register used for write-back

6. Arithmetic Logic Unit (ALU)
   Executes ADD, SUB, and AND operations based on a 3-bit control signal.

7. Data Memory
   Stores data and computation results with word-aligned addressing.

8. Testbench
   Simulates processor execution, initializes registers, controls the program counter,
   and verifies correct behavior using waveform analysis.


## Screenshots
## Data Path
<p align="center"> <img src="docs/rtl_diagrams/data_path_rtl.png" width="800"> </p>

## Execution Flow

1. Instruction is fetched from instruction memory using the program counter
2. Opcode is decoded by the control unit
3. Operands are read from R0 and R1 in the register file
4. ALU performs the selected operation
5. Result is written back to the ACC register


## Tools and Technologies Used

- Verilog HDL
- ModelSim / Icarus Verilog
- MARS MIPS Simulator (for instruction reference)
- GTKWave (for waveform analysis)


## Testing and Verification
The processor is verified using a dedicated testbench that:
- Initializes register values
- Forces program counter values for instruction testing
- Executes ADD, SUB, and AND instructions
- Observes outputs using waveform dumps

Waveform analysis confirms correct instruction execution and data flow.


## Project Scope and Limitations
This implementation is a simplified educational model and does not include:
- Branch or jump instructions
- Immediate operands
- Pipeline stages
- Hazard detection or forwarding

## Future Enhancements
Possible future improvements include:
- Adding more MIPS instructions
- Supporting branching and memory operations
- Implementing pipelining
- Expanding the register file
- Improving instruction decoding logic


## Authors
Muzamil Rehman  

## Course
Computer Organization and Assembly Language (COAL)
