# 🛡️ IF-Cyber-Portfolio: Mobile Cybersecurity Workbench
==========================================================

### 🏫 The Knowledge House Innovation Fellow: Chad K. Bachoo (IF-CS-26 NY)
-----------------------------------------------------------------------------
[📱 Android Mobile Cybersecurity Workbench](https://github.com/CK-Bachoo/Android-mobile-cybersecurity-workbench)

> **Professional Statement:** This portfolio and all associated artifacts were engineered exclusively using a Samsung Note 20 Ultra 5G / Termux Bunker configuration. This environment demonstrates a mobile-first, headless-first approach to systems administration, network security, and defensive automation.

---

## 🏗️ Architecture Pipeline
**Note 20 Ultra** → **Termux (Dual Terminal)** → **Google Cloud Shell (Chrome Mobile)** → **GitHub** → **Canvas**

---

## ⚖️ Governance & Framework Alignment

| Artifact | Function | NIST CSF | CIS Control | CIA Triad |
| :--- | :--- | :--- | :--- | :--- |
| **harden.sh** | OS Hardening | PR.IP | CIS 4 | Integrity |
| **subnet_audit.txt** | Network Blueprint | PR.IP | CIS 4 | Integrity |
| **protocol_audit.txt** | Threat Intel | DE.CM | CIS 9 | Confidentiality |
| **port_check.py** | Asset Discovery | DE.AE | CIS 12 | Availability |
| **network_audit.txt** | Log Analysis | PR.AT | CIS 8 | Integrity |

---

## 📂 Artifact Evidence & Operational History

### 🛠️ T1-M1-S01: Portfolio Initialization
* [Evidence: Commit 584f951](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/584f951)
* **Explanation:** Established secure baseline via Note 20 Ultra. Initialized Git version control and configured SSH key-based authentication. Documented initial Linux navigation via discovery.txt.

### 🛠️ T1-M1-S02: Command Line Operations
* [Evidence: Commit f244294](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/f244294)
* **Explanation:** CLI proficiency. Demonstrated mastery of directory traversal, file permission management, and core Linux I/O operations required for headless systems administration.

### 🛠️ T1-M1-S03: Network Foundations
* [Evidence: network_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/network_audit.txt)
* **Explanation:** Network layer analysis performed in Termux using dual-terminal sessions for concurrent monitoring. Conducted packet analysis and connectivity verification (Ping 8.8.8.8: 0% loss).

### 🔍 TLAB-01: OPERATION CLEAN SWEEP
* [Evidence: TLAB-01_Report.md](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/TLAB-01_Report.md)
* **Explanation:** Advanced incident response and log interrogation. Leveraged dual Termux terminals to identify and eradicate IoCs (Malicious IPs: 10.99.88.77, 45.33.22.11). Confirmed system integrity post-remediation.

### 🛠️ T1-M1-S04: Portfolio Artifact Git Commit
* [Evidence: harden.sh](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/harden.sh)
* **Explanation:** Infrastructure-as-Code deployment. Synchronized the local mobile workbench with curriculum dependencies strictly via Google Cloud Shell (Chrome Mobile) and Termux.

### 🛠️ T1-M1-S05: Portfolio Artifact Git Commit
* [Evidence: subnet_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/subnet_audit.txt)
* **Explanation:** Connectivity verification. Leveraged ip addr and ping in Termux to blueprint subnetting architectures and ensure routing integrity. (Target: 192.168.1.200)

### 🛠️ T1-M1-S06: Protocol Interrogation (Wireshark Analysis)
* [Evidence: protocol_audit.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/protocol_audit.txt)
* **Explanation:** Protocol parsing via grep, awk, and sed in Termux. Isolated network protocol anomalies (Verified Google IP: 142.250.217.14) to transform traffic into actionable threat intelligence.

### 🛰️ T1-M2.TLAB: Operation Blackout (Linux Hardening)
* [Evidence: harden.sh](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/harden.sh)
* **Explanation:** Initialization of Module 2 Capstone. Leveraging Google Cloud Shell for high-compute security assessments and advanced automation workflows using the Note 20 Ultra.

---

## 🐍 T1-M1.S07: THE AUTOMATION FORGE (Network Reconnaissance)

| Data Point | Desktop/Laptop User (Standard) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Architecture** | Standard x86/x64 Linux Desktop | ARM64 Mobile Sandbox (Termux) |
| **Evidence & Data** | Automated Script Execution | 1. [Evidence 1: port_check.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/port_check.py) <br> 2. [Evidence 2: s07reflection.md](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/s07reflection.md) |

**🛡️ S07 Technical Analysis:** Python-based socket logic executed within the ARM64 Termux environment. The scan proved mobile-driven reconnaissance is viable in enterprise network topologies without requiring native root permissions.

---

## 🛡️ T1-M1.S08: REFINED PAPER TRAIL (Forensic Audit Comparison)

| Data Point | Desktop User (Standard) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Source Data** | Static `auth_audit.log` file | Live `ps aux` Memory Snapshot |
| **Evidence & Data** | IPs: 10.0.0.55 / 172.16.0.5 | 1. [Evidence 1: brute_report.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/brute_report.txt) (Data: 10.0.0.55 / 172.16.0.5) <br> 2. [Evidence 2: monitoring_log.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/monitoring_log.txt) (Timestamp: Tue Mar 24 23:57:04 EDT 2026) |

**🛡️ S08 Technical Analysis:** The forensic task was performed by capturing a live memory snapshot via `ps aux`. The system successfully extracted target IPs from active system noise, demonstrating effective forensic recovery in a live mobile environment.

---

## 🚀 T1-M1.S09: THE AUTOMATION PIVOT (Engineering Audit Comparison)

| Data Point | Desktop User (Standard) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Provisioning** | `sudo bash` (Success) | No superuser binary detected (Blocked by Android Security) |
| **Evidence & Data** | {"severity": "High"} (Automatic) | 1. [Evidence 1: audit_brief.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/lab_prep/audit_brief.txt) (Data: Cryptominer JSON Seed) <br> 2. [Evidence 2: system_auditor.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/system_auditor.py) |
| **Audit Result** | Malware Detected via Root Access | [Result: [-] Clean / System Secured] |

**🛡️ S09 Technical Analysis:** During this audit, the Android security model (Samsung Knox) actively blocked the `sudo` command required for unauthorized malware provisioning. A custom Python auditor parsed JSON threat seeds manually to prove detection accuracy against known signatures without compromising the OS.
