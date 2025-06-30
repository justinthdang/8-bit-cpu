# COE 328 Final Project: 8-Bit CPU

## Overview

This project implements an 8-bit Central Processing Unit (CPU) on an Altera Cyclone II FPGA board using VHDL and Intel Quartus II. The CPU is capable of executing various arithmetic and logic operations through a combination of key digital logic components.

### Register
Stores 8-bit values using D flip-flops. Supports reset and synchronous data loading.

### FSM (Finite State Machine)
Cycles through 8 predefined states (based on the student ID), used to generate control signals for the decoder.

### 3-to-8 Decoder
Translates 3-bit FSM output into a unique 8-bit opcode signal for the ALU.

### ALUs (Arithmetic Logic Units)
- **ALU 1 – Basic Arithmetic & Logic:**  
  Sum, difference, inversion, and logical operations.
- **ALU 2 – Bit Manipulation:**  
  Shifting, rotation, comparison, inversion, and modified addition.
- **ALU 3 – Student ID Parity Check:**  
  Outputs `'y'` or `'n'` depending on whether each digit of the student ID is odd or even.

Each ALU outputs results as **two 4-bit signed values**, displayed on **seven-segment displays**.

## Final Block Diagrams, ALU Microcodes, and Example Waveforms

**Note:** Example waveforms are shown using the student ID number 01226005, and register numbers 10 and 5. The output of the student ID begins at the second clock signal whereas the operations begin at the third clock signal.

### CPU 1

![CPU 1 Block Diagram](https://github.com/justinthdang/8-bit-cpu/blob/main/images/cpu1.png?raw=true)

| Function \# | Opcode | Function |
| ----- | ----- | ----- |
| 1 | 00000001 | SUM(a, b) |
| 2 | 00000010 | DIF(a, b) |
| 3 | 00000100 | NOT(a) |
| 4 | 00001000 | NOT(a AND b) |
| 5 | 00010000 | NOT(a OR b) |
| 6 | 00100000 | a AND b |
| 7 | 01000000 | a XOR b |
| 8 | 10000000 | a OR b |

![Waveform 1 Block Diagram](https://github.com/justinthdang/8-bit-cpu/blob/main/images/waveform1.png?raw=true)

### CPU 2

![CPU 2 Block Diagram](https://github.com/justinthdang/8-bit-cpu/blob/main/images/cpu2.png?raw=true)

| Function \# | Opcode | Function |
| ----- | ----- | ----- |
| 1 | 00000001 | Increment a by 2 |
| 2 | 00000010 | Shift b to the right by two bits, input bit \= 0 |
| 3 | 00000100 | Shift a to the right by four bits, input bit \= 1 |
| 4 | 00001000 | Find the smaller value of a and b, and produce the results |
| 5 | 00010000 | Rotate a to the right by two bits |
| 6 | 00100000 | Invert the bit-significance order of b |
| 7 | 01000000 | Produce the result of XORing a and b |
| 8 | 10000000 | Produce the summation of a and b, then decrease it by 4 |

![Waveform 2 Block Diagram](https://github.com/justinthdang/8-bit-cpu/blob/main/images/waveform2.png?raw=true)

### CPU 3

![CPU 3 Block Diagram](https://github.com/justinthdang/8-bit-cpu/blob/main/images/cpu3.png?raw=true)

| Function \# | Opcode | Function |
| ----- | ----- | ----- |
| 1 | 00000001 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |
| 2 | 00000010 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |
| 3 | 00000100 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |
| 4 | 00001000 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |
| 5 | 00010000 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |
| 6 | 00100000 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |
| 7 | 01000000 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |
| 8 | 10000000 | Display ‘y’ if the student ID digit is odd and ‘n’ otherwise |

![Waveform 3 Block Diagram](https://github.com/justinthdang/8-bit-cpu/blob/main/images/waveform3.png?raw=true)