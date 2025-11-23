# 🚀 Asynchronous FIFO – Design & Verification (SystemVerilog)

## 📌 Overview
This repository contains the RTL implementation and verification environment for an **Asynchronous FIFO** designed in SystemVerilog. The FIFO supports reliable data transfer between two independent clock domains using Gray-code pointers and synchronization techniques.

---

## ✅ Features
- Independent read and write clock domains  
- Dual-port memory for simultaneous access  
- Gray-code pointer implementation  
- Two-flip-flop synchronizers for CDC safety  
- Accurate full and empty flag generation  
- Parameterized data width and depth  
- Asynchronous reset handling  

---

## 🧠 Design Summary
- Write and read pointers operate in separate clock domains  
- Binary pointers converted to Gray code for safe cross-domain transfer  
- Full and empty conditions generated using synchronized pointer comparison  
- Prevents overflow and underflow under all operating conditions  

---

## ✅ Verification Overview
The verification environment is modular and self-checking.

### Components Included:
- Write and read agents (generator + BFM + monitor)  
- Scoreboard for data integrity checking  
- Assertions for protocol enforcement  
- Functional coverage for scenario completion  

### Test Scenarios:
- Normal read/write operation  
- Overflow attempt  
- Underflow attempt  
- Concurrent read and write  
- Pointer wrap-around  
- Reset recovery  

---

## 📂 Repository Structure
├── asyn_fifo.sv # RTL design
├── fifo_tb.sv # Testbench top
├── wr_agent/ # Write generator, BFM, monitor
├── rd_agent/ # Read generator, BFM, monitor
├── fifo_sbd.sv # Scoreboard
├── fifo_assert.sv # Assertions
├── wr_cov.sv / rd_cov.sv # Functional coverage
└── run.do # QuestaSim simulation script

📊 Coverage Result
-100% functional coverage achieved
-All covergroups and bins hit successfully
-No assertion failures observed
🔧 Requirements

QuestaSim / ModelSim
-SystemVerilog support

🔜 Future Enhancements
-UVM-based verification
-Almost-full / almost-empty flags
-Formal verification
-ECC and fault-tolerance support

👤 Author
-Ganesh HR
