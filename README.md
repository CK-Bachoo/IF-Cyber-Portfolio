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





---


## 🐍 T1-M1.S07: THE AUTOMATION FORGE (Network Reconnaissance)

| Data Point | Desktop/Laptop User (Standard) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Architecture** | Standard x86/x64 Linux Desktop. | ARM64 Mobile Sandbox (Termux). |
| **Evidence & Data** | Automated Script Execution. | 1. [Evidence 1: port_check.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/port_check.py) (**Socket Logic**) <br> 2. [Evidence 2: s07reflection.md](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/s07reflection.md) (**Architecture Analysis**) |

**🛡️ S07 Technical Analysis:** In this session, the Python-based socket logic was executed within the ARM64 Termux environment. The system performed the scan by attempting connection handshakes across specified ports on the local network. The performance was defined by the mobile system's ability to handle low-level socket requests without native root permissions, yielding a successful asset map of the environment.

---

## 🛡️ T1-M1.S08: REFINED PAPER TRAIL (Forensic Audit Comparison)

| Data Point | Desktop User (Standard) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Source Data** | Static `auth_audit.log` file. | Live `ps aux` Memory Snapshot. |
| **Evidence & Data** | IPs: **10.0.0.55** / **172.16.0.5** | 1. [Evidence 1: brute_report.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/brute_report.txt) (**Data: 10.0.0.55 / 172.16.0.5**) <br> 2. [Evidence 2: monitoring_log.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/monitoring_log.txt) (**Timestamp: Tue Mar 24 23:57:04 EDT 2026**) |

**🛡️ S08 Technical Analysis:** The forensic task was performed by capturing a live memory snapshot via `ps aux`. The data was then manually filtered using `grep` to isolate PID 3845. The system successfully extracted the target IPs (**10.0.0.55** and **172.16.0.5**) and generated a forensic report with an absolute timestamp (**23:57:04 EDT**). This process demonstrates the extraction of forensic evidence directly from active system noise in a live environment.

---

## 🚀 T1-M1.S09: THE AUTOMATION PIVOT (Engineering Audit Comparison)

| Data Point | Desktop User (Standard) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Provisioning** | `sudo bash` (Success) | `No superuser binary detected` (Blocked by Android Security). |
| **Evidence & Data** | `{"severity": "High"}` (Automatic) | 1. [Evidence 1: audit_brief.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/lab_prep/audit_brief.txt) (**Data: Cryptominer JSON Seed**) <br> 2. [Evidence 2: system_auditor.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/system_auditor.py) (**Logic Verification**) |
| **Audit Result** | Malware Detected via Root Access. | [Evidence 2: system_auditor.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/system_auditor.py) (**Result: [-] Clean / System Secured**) |

**🛡️ S09 Technical Analysis:** During this audit, the Android security model actively blocked the `sudo` command required for the malware to provision itself. To perform the audit logic test, a JSON-based threat seed (**[Evidence 1]**) was manually introduced to the scanning directory. The system auditor then parsed this data, successfully flagging the unauthorized process signatures. The final audit resulted in a **[-] Clean** report for the actual OS, proving the detection script's accuracy against known threat signatures while the system remained uncompromised.
