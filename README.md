# 🛡️ IF-Cyber-Portfolio
## 🏫 The Knowledge House Innovation Fellow: Chad K. Bachoo  IF-CS-26 New York
### [📱 Android Mobile Cybersecurity Workbench] (https://github.com/CK-Bachoo/Android-mobile-cybersecurity-workbench)
**This entire portfolio and all associated artifacts were created strictly and exclusively using the Samsung Note 20 Ultra 5G / Termux Bunker configuration.**

[🌐 Portfolio Repository Activity Log](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/activity)

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
* [Evidence: Commit History](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commits/main)
* **Explanation:** Established secure baseline via Note 20 Ultra. Initialized Git version control and configured SSH key-based authentication for encrypted transmission to GitHub.

### 🛠️ T1-M1-S02: Command Line Operations
* [Evidence: Commit History](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commits/main)
* **Explanation:** CLI proficiency. Demonstrated mastery of directory traversal, file permission management, and core Linux I/O operations required for headless systems administration.

### 🛠️ T1-M1-S03: Network Foundations (Cisco Academy)
* [Evidence: Commit History](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commits/main)
* **Explanation:** Network layer analysis. Leveraged Cisco Networking Academy resources to map the OSI model and TCP/IP stack. Conducted packet analysis foundations in preparation for advanced Wireshark interrogation.

### 🔍 TLAB-01: OPERATION CLEAN SWEEP
* [network_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/network_audit.txt)
* **Explanation:** Advanced log interrogation to identify Indicators of Compromise (IoCs). Detected unauthorized access attempts and proposed technical remediation.

### ⚙️ T1-M1-S04: Portfolio Artifact Git Commit
* [Evidence: Commit History](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commits/main)
* **Explanation:** Infrastructure-as-Code deployment. Synchronized the local mobile workbench with curriculum dependencies strictly via Google Cloud Shell and Termux.

### ⚙️ T1-M1-S05: Portfolio Artifact Git Commit
* [subnet_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/subnet_audit.txt)
* **Explanation:** Connectivity verification. Leveraged `ip addr`, `ping`, and `ipcalc` to blueprint subnetting architectures and ensure routing integrity.

### 🛰️ T1-M1-S06: Protocol Interrogation (Wireshark Analysis)
* [protocol_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/protocol_audit.txt)
* **Explanation:** Protocol parsing via `grep`, `awk`, and `sed`. Utilized Wireshark-based data captures to isolate network protocol anomalies and transform raw traffic into actionable threat intelligence.

### 🛡️ T1-M2.TLAB: Operation Blackout (Linux Hardening)
* [harden.sh](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/harden.sh)
* **Explanation:** Initialization of Module 2 Capstone. Leveraging GitHub Codespaces for high-compute security assessments and advanced automation workflows using the Note 20 Ultra.




## 🐍 T1-M1.S07: THE AUTOMATION FORGE (Network Reconnaissance)

| Data Point | Desktop/Laptop User (Standard Curriculum) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Architecture** | Standard x86/x64 Linux Desktop. | ARM64 Mobile Sandbox (Termux). |
| **Evidence** | Automated Script Execution. | [port_check.py](./port_check.py) |
| **Conclusion** | Standard recon automation. | Successfully executed socket-based reconnaissance within a restricted mobile sandbox. |

---

## 🛡️ T1-M1.S08: REFINED PAPER TRAIL (Forensic Audit Comparison)

| Data Point | Desktop User (Standard Curriculum) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Source Data** | Static `auth_audit.log` file. | Live `ps aux` Memory Snapshot. |
| **Evidence Links** | IPs: `10.0.0.55` / `172.16.0.5` | 1. [Threat Intel (IPs)](./brute_report.txt)<br>2. [Timestamped Log Snapshot](./monitoring_log.txt) |
| **Verification** | Automated script parsing. | Manual `grep` extraction from live system noise (PID 3845). |

---

## 🚀 T1-M1.S09: THE AUTOMATION PIVOT (Engineering Audit Comparison)

| Data Point | Desktop User (Standard Curriculum) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Provisioning** | `sudo bash` (Success) | `No superuser` (Blocked by Android Security). |
| **Evidence Links** | `{"severity": "High"}` (Automatic) | 1. [Manual Evidence Seed](./lab_prep/audit_brief.txt)<br>2. [Auditor Script](./system_auditor.py) |
| **Audit Result** | Malware Detected via Root Access. | [system_auditor.py](./system_auditor.py) (Verified Clean System). |

* **The Same-Output Evidence:** To match class results despite my system defending against the `sudo` malware, I manually seeded the [audit_brief.txt](./lab_prep/audit_brief.txt) evidence. My [system_auditor.py](./system_auditor.py) proved the logic catches the threat exactly like the desktop class, while accurately reporting my actual system remained **`[-] Clean`**.
