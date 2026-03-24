# 🛡️ IF-Cyber-Portfolio
## Mobile Cybersecurity Workbench
**This entire portfolio and all associated artifacts were created strictly and exclusively using the Samsung Note 20 Ultra 5G / Termux Bunker configuration.**

[🌐 Access Mobile Cybersecurity Workbench Repository](https://github.com/CK-Bachoo/IF-Cyber-Portfolio)

---

## 🏗️ Architecture Pipeline
**Note 20 Ultra** ➔ **Termux / Google Cloud Shell** ➔ **GitHub Codespaces / Chrome Mobile** ➔ **Canvas**

## ⚖️ Governance & Framework Alignment
| Artifact | Function | NIST CSF | CIS Control | CIA Triad |
|---|---|---|---|---|
| **harden.sh** | OS Hardening | PR.IP | CIS 4 | Integrity |
| **subnet_audit.txt** | Network Blueprint | PR.IP | CIS 4 | Integrity |
| **protocol_audit.txt** | Threat Intel | DE.CM | CIS 9 | Confidentiality |
| **port_check.py** | Asset Discovery | DE.AE | CIS 12 | Availability |
| **network_audit.txt** | Log Analysis | PR.AT | CIS 8 | Integrity |

---

## 📁 Artifact Evidence & Operational History
> **Note:** This environment is volatile. Foundational scripts (S04) must be re-executed via `sudo bash` to restore state if the terminal session drops.

### 🛠️ T1-M1-S01: Portfolio Initialization
* [Evidence: Activity Log](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/activity)
* **Explanation:** Established secure baseline via Note 20 Ultra. Initialized Git version control and configured SSH key-based authentication for encrypted transmission to GitHub.

### 🛠️ T1-M1-S02: Command Line Operations
* [Evidence: Activity Log](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/activity)
* **Explanation:** CLI proficiency. Demonstrated mastery of directory traversal, file permission management, and core Linux I/O operations required for headless systems administration.

### 🛠️ T1-M1-S03: Network Foundations (Cisco Academy)
* [Evidence: Activity Log](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/activity)
* **Explanation:** Network layer analysis. Leveraged Cisco Networking Academy resources to map the OSI model and TCP/IP stack. Conducted packet analysis foundations in preparation for advanced Wireshark interrogation.

### 🔍 TLAB-01: OPERATION CLEAN SWEEP
* [network_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/network_audit.txt)
* **Explanation:** Advanced log interrogation to identify Indicators of Compromise (IoCs). Detected unauthorized access attempts and proposed technical remediation.

### ⚙️ T1-M1-S04: Portfolio Artifact Git Commit
* [Evidence: Activity Log](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/activity)
* **Explanation:** Infrastructure-as-Code deployment. Synchronized the local mobile workbench with curriculum dependencies strictly via Google Cloud Shell and Termux.

### ⚙️ T1-M1-S05: Portfolio Artifact Git Commit
* [subnet_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/subnet_audit.txt)
* **Explanation:** Connectivity verification. Leveraged `ip addr`, `ping`, and `ipcalc` to blueprint subnetting architectures and ensure routing integrity.

### 🛰️ T1-M1-S06: Protocol Interrogation (Wireshark Analysis)
* [protocol_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/protocol_audit.txt)
* **Explanation:** Protocol parsing via `grep`, `awk`, and `sed`. Utilized Wireshark-based data captures to isolate network protocol anomalies and transform raw traffic into actionable threat intelligence.

### 🌑 T1-M2.TLAB: Operation Blackout
* [Evidence Repository](https://github.com/CK-Bachoo/IF-Cyber-Portfolio)
* **Explanation:** Initialization of Module 2 Capstone. Leveraging GitHub Codespaces for high-compute security assessments and advanced automation workflows.

### 🐍 IF-CS.26.T1-M1.S07: The Automation Forge
* [port_check.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/port_check.py) | [s07reflection.md](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/s07reflection.md)
* **Explanation:** Python-based network reconnaissance. Developed a socket-based port scanner to automate vulnerability identification and asset discovery.

---
"Action then Audit."

**Designed by: Chad K. Bachoo | Android Cyber Security Workbench**
