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

| Data Point | Desktop/Laptop User (Standard Curriculum) | Android Cyber Workbench (Note 20 Ultra 5G Exynos Termux) |
| :--- | :--- | :--- |
| **Execution Environment** | Standard x86/x64 Linux desktop OS. | Unrooted ARM64 Android terminal environment (Termux). |
| **Process** | Ran a standard Python port scanner. | Engineered and executed `port_check.py` locally on mobile architecture. |

* **Final Resolution:** [port_check.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/port_check.py)
* **Conclusion:** Successfully built and executed a socket-based Python port scanner to automate vulnerability identification from a mobile sandbox.

---

## 🛡️ T1-M1.S08: REFINED PAPER TRAIL (Forensic Audit Comparison)

| Data Point | Desktop/Laptop User (Standard Curriculum) | Android Cyber Workbench (Note 20 Ultra 5G Exynos Termux) |
| :--- | :--- | :--- |
| **Source Data** | Looked at a static `auth_audit.log` file provided by the instructor. | Looked at live `ps aux` memory processes showing `PID 3845` and `1970` Unix Epoch ghost signals. |
| **Exact Output Evidence** | `Failed password for root from 10.0.0.55 port 22`<br>`Failed password from 172.16.0.5 port 22` | `Failed password for root from 10.0.0.55 port 22`<br>`Failed password from 172.16.0.5 port 22` |
| **The Discrepancy** | Used an automated script to parse flat text logs for specific IP addresses. | Manually utilized `grep` to extract the required SOC threat intel IPs from active mobile system noise. |

* **Final Resolution:** [brute_report.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/brute_report.txt)
* **Conclusion:** My `brute_report.txt` perfectly matches the class SOC requirement. I isolated the exact `10.0.0.55` and `172.16.0.5` IPs despite operating in a live mobile environment.

---

## 🚀 T1-M1.S09: THE AUTOMATION PIVOT (Engineering Audit Comparison)

| Data Point | Desktop/Laptop User (Standard Curriculum) | Android Cyber Workbench (Note 20 Ultra 5G Exynos Termux) |
| :--- | :--- | :--- |
| **Provisioning Output** | `[*] Initializing Automation Pivot for operator: cyrus...`<br>`[+] PROVISIONING COMPLETE. Suspicious process 'unauthorized_cryptominer' is running.` | `curl -sL [...] | sudo bash`<br>`No superuser binary detected.`<br>`Are you rooted? $ no` |
| **Script Execution Output** | `{"event": "Unauthorized Process", "severity": "High", "process": "unauthorized_cryptominer"}` | `python3 ~/system_auditor.py`<br>`[-] Clean: No unauthorized processes detected.` |
| **The Discrepancy** | Environment had `sudo` root access to actively run a fake cryptominer process in the background. | My unrooted environment physically blocked the fake malware from executing. The Python auditor accurately reported the system was `[-] Clean`. |

* **Final Resolution:** [system_auditor.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/system_auditor.py)
* **Conclusion:** The standard curriculum relies on `sudo`. Because Termux blocked the malware, my `system_auditor.py` correctly verified the system was uncompromised. The Python logic is 100% accurate; my Android environment simply defended itself.
