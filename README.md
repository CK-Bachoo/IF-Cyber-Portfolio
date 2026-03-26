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


## 🐍 T1-M1.S07: THE AUTOMATION FORGE
* [port_check.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/port_check.py)
* **Explanation:** Python-based network reconnaissance. Developed a socket-based port scanner to automate vulnerability identification.

---

## 🛡️ T1-M1.S08: REFINED PAPER TRAIL (Forensic Audit Comparison)

**Professor's Note:** Because I am operating on a mobile ARM64 environment, my initial terminal captures reflect live system states rather than static log files. Below is the exact forensic cross-match proving I understand the expected curriculum and how to translate it from my environment.

| Data Point | Standard Curriculum (What the Class Got) | CK-Bachoo Bunker (What I Got) |
| :--- | :--- | :--- |
| **Initial View** | Looked at a static `auth_audit.log` | Looked at live `ps aux` showing `PID 3845` and `1970` ghost signals |
| **Exact Output Evidence** | `Failed password for root from 10.0.0.55 port 22`<br>`Failed password from 172.16.0.5 port 22` | `Failed password for root from 10.0.0.55 port 22`<br>`Failed password from 172.16.0.5 port 22` |
| **The Discrepancy** | The class used an automated script to extract the IPs. | I manually used `grep` to extract the IPs from my system noise and put them into my report. |

* **Final Resolution:** [brute_report.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/brute_report.txt)
* **Conclusion:** My `brute_report.txt` file exactly matches the class output. I successfully isolated the `10.0.0.55` and `172.16.0.5` IP addresses, fulfilling the SOC requirement despite the mobile environment noise.

---

## 🚀 T1-M1.S09: THE AUTOMATION PIVOT (Engineering Audit Comparison)

| Data Point | Standard Curriculum (Prof. Robbins' Screen) | CK-Bachoo Bunker (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Provisioning Output** | `[*] Initializing Automation Pivot...`<br>`[+] PROVISIONING COMPLETE.` | `curl -sL [...] | sudo bash`<br>`No superuser binary detected.`<br>`Are you rooted? $ no` |
| **Exact Output Evidence** | `{"event": "Unauthorized Process", "severity": "High", "process": "unauthorized_cryptominer"}` | `{"event": "Unauthorized Process", "severity": "High", "process": "unauthorized_cryptominer"}` |
| **The Discrepancy** | The class environment had `sudo` root access to automatically build the lab. | My unrooted environment required me to manually build the `lab_prep` folder and file with the cryptominer text. |

* **Final Resolution:** [system_auditor.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/system_auditor.py)
* **Conclusion:** Because the instructor's automated script requires `sudo` privileges, I engineered the threat intel files by hand. I then ran my `system_auditor.py` script, and it correctly scanned my manual files to produce the exact same JSON alert as the class.
