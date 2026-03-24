# IF-Cyber-Portfolio
Mobile Cybersecurity Workbench

## 🏗️ Architecture Pipeline
Termux (Local Mobile Environment) -> Git Version Control -> GitHub Remote Origin -> Canvas Verification

## ⚖️ Governance & Framework Alignment
| Artifact | Function | NIST CSF | CIS Control | CIA Triad | AAA |
|---|---|---|---|---|---|
| subnet_audit.txt | Proof of network benchmark application | PR.IP | CIS 4 | Integrity | Authorization |
| protocol_audit.txt | Threat intel workflow | DE.CM | CIS 9 | Confidentiality | Accounting |
| port_check.py | Automated port scanning | DE.AE | CIS 12 | Availability | Authentication |
| network_audit.txt | Incident log analysis | PR.AT | CIS 8 | Integrity | Accounting |

## 📁 Artifact Evidence & Operational History
*Note: This environment is volatile. Each session operates as a strict dependency for the next. If the terminal connection drops, foundational scripts (S04) must be re-executed via `sudo bash` to restore state before proceeding.*

### 📁 T1-M1-S01: Portfolio Artifact Git Push
* [Evidence Repository](https://github.com/CK-Bachoo/IF-Cyber-Portfolio)
* **Explanation:** Deployed Git Version Control foundations, establishing SSH key authentication between the mobile bunker and remote origin.

### 📁 T1-M1-S02: Portfolio Artifact Git Push
* [Evidence Repository](https://github.com/CK-Bachoo/IF-Cyber-Portfolio)
* **Explanation:** Mastered directory traversal, file manipulation, and core Linux I/O operations without graphical interfaces.

### 📁 T1-M1-S03: Portfolio Artifact Git Push
* [Evidence Repository](https://github.com/CK-Bachoo/IF-Cyber-Portfolio)
* **Explanation:** Mapped core networking protocols and analyzed basic topology requirements for secure communications.

### 📁 TLAB-01: OPERATION CLEAN SWEEP
* [network_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/network_audit.txt): Incident log analysis and threat remediation report.
* **Explanation:** Capstone operation. Conducted comprehensive log review to identify unauthorized access and proposed immediate remediation steps.

### 📁 T1-M1-S04: Portfolio Artifact Git Commit
* [Evidence Repository](https://github.com/CK-Bachoo/IF-Cyber-Portfolio)
* **Explanation:** Executed remote initialization scripts to build the local mobile environment. Re-execution of this foundation is required upon terminal session drops.

### 📁 T1-M1-S05: Portfolio Artifact Git Commit
* [subnet_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/subnet_audit.txt): Network connectivity and subnetting blueprint.
* **Explanation:** Verified connectivity using core routing commands (`ip addr`, `ping`, `traceroute`, `ipcalc`). This module is strictly dependent on a stable S04 foundation state.

### 📁 T1-M1-S06: Protocol Interrogation
* [protocol_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/protocol_audit.txt): Extracted protocol indicator logs.
* **Explanation:** Executed text manipulation commands to isolate and extract specific network protocol data from raw logs.

### 📁 T1-M2.TLAB: Operation Blackout
* [Evidence Repository](https://github.com/CK-Bachoo/IF-Cyber-Portfolio)
* **Explanation:** Initializing Module 2 capstone environment. (Evidence synchronized to main repository).

### 📁 IF-CS.26.T1-M1.S07: The Automation Forge
* [port_check.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/port_check.py): Automated Python logic gate utilizing socket connections.
* [s07reflection.md](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/s07reflection.md): Documentation on Python loop iteration.
* **Explanation:** Transitioned from manual network testing to automated Python scripting for rapid target assessment and infrastructure scaling.

"Action then Audit."

Designed by: Chad K. Bachoo