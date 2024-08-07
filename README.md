# Nano-Processor-Design
Nano Processor capable of executing simple set of instructions: 4-bit Add/Subtract unit , 3-bit adder, 3-bit Program Counter, k-way b-bit multiplexers


| Instruction | Description | Format (12-bit instruction) |
|-------------|-------------|-----------------------------|
| MOVI R, d | Move immediate value d to register R, i.e., R ← d <br>R ∈ [0, 7], d ∈ [0, 15] | 1 0 R R R 0 0 0 d d d d |
| ADD Ra, Rb | Add values in registers Ra and Rb and store the result in Ra, i.e., Ra ← Ra + Rb <br>Ra, Rb ∈ [0, 7] | 0 0 Ra Ra Ra Rb Rb Rb 0 0 0 0 |
| NEG R | 2’s complement of registers R, i.e., R ← −R <br>R ∈ [0, 7] | 0 1 R R R 0 0 0 0 0 0 0 |
| JZR R, d | Jump if value in register R is 0, i.e., <br>&nbsp;If R == 0 <br>&nbsp;&nbsp;&nbsp;PC ← d; <br>&nbsp;Else <br>&nbsp;&nbsp;&nbsp;PC ← PC + 1; <br>R ∈ [0, 7], d ∈ [0, 7] | 1 1 R R R 0 0 0 0 d d d |

<br>
<br>

---
## Import the `NanoProcessor_G39` folder in Vivado and Run the Simulations or Test it on **BASYS3**.
---

<img align="right" src="https://visitor-badge.laobi.icu/badge?page_id=patricnilackshan.Nano-Processor-Design" />
