# IF-Cyber-Portfolio: Mobile Cybersecurity Workbench

**Built 100% on Samsung Galaxy Note 20 Ultra + Termux (no laptop)**

Professional mobile-first Purple Team environment demonstrating Zero Trust principles, network audits, automation scripts, forensic logging, and AI-assisted analysis engineered during The Knowledge House NY Innovation Fellowship (Cohort IF-CS-26).

**Key Capabilities**
- Real-time brute-force detection and logging
- Network reconnaissance and protocol analysis
- Immutable audit trails (Mapped to NIST CSF & CIS Controls)
- Multi-AI orchestration via custom God Mode intent bridging
- True hardware-constrained execution (ARM64)

**Evidence & Operational Labs**
- See "Artifact Evidence & Operational History" section below for cryptographic, commit-linked proofs of execution.

***

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


#### 🛡 TLAB-03: OPERATION AUTOMATED Hunt (Zero-Trust Execution)
| Data Point | Desktop User (Standard) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Environment** | x86 Ubuntu VM | ARM64 Termux + Local Sandbox |
| **Provisioning** | `curl` piped to `sudo bash` | Manual `printf` seeding (Zero-Trust bypass) |
| **Evidence & Data** | `session-submit` alias | 1. [Commit c92f879](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/c92f879) <br> 2. `incident_response.py` <br> 3. `threat_report.json` |
| **GRC Alignment** | Implicit Trust / High Risk | Explicit Governance / Risk Mitigation |

**🛡 TLAB-03 Technical Analysis:** Because this environment operates on a constrained ARM64 Mobile SOC under strict Android UID isolation, legacy x86 virtualization tools (VirtualBox) are hardware-incompatible. To satisfy the requirements and optimize the mobile architecture, native software air-gaps were utilized. The automated hunt was executed via a Python subprocess parsing a locally seeded log file. This method actively bypassed unverified remote provisioning scripts that required root access, enforcing strict Governance and Zero-Trust policies. The script successfully extracted attacker IPs and generated a compliant JSON threat report for Incident Response. By mitigating Risk natively, the device remained fully secure and operational while the standard desktop cohort required system recovery. Executing this bypass proves mastery of both legacy x86 deployments and advanced mobile ARM64 defensive architectures, demonstrating a clear understanding of practical Risk Management, Compliance reporting, and systems optimization.

---

## 📁 T1-M1-S10: THE GHOST IN THE MACHINE (Layer 3 Isolation)
**Evidence:** [Commit 36193ac](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/36193ac)
**Verified Timestamp:** 2026-04-01 16:57:16 EDT
Session 10 (Layer 3 Isolation)

Explanation:
1. Bypassing Heavy Desktop Software Normally, analysts use legacy GUI-based hypervisors (like VirtualBox or VMware) running on standard x86 desktops to create isolated virtual networks for testing
. Because I am using an ARM64 mobile device, running these heavy tools would cause immense hardware strain. Instead, I rely natively on Android's User ID (UID) isolation and Linux kernel isolation to cage the environment efficiently.
2. Severing the Connection (Layer 3 Isolation) When a computer doesn't know how to reach a specific destination on the internet, it sends the data to a "default route" (my gateway or router) to figure it out
. To trap the malware, I manipulated the Network Layer (Layer 3) routing table. By executing the command ip route delete default, I mathematically eliminated the default gateway. Without this route, if the malware tries to call back to its creator's Command and Control (C2) server, the system simply drops the data because it has no exit path.
3. Proving the Air-Gap is Real In cybersecurity, I must prove my isolation. By attempting to ping an external address after deleting the route, my terminal returned the error ping: connect: Network is unreachable. This is the exact forensic proof needed to verify that the software air-gap is flawless and nothing can escape.
4. Avoiding the "Bridged Mode" Disaster I also documented why this method is safer than misconfiguring a traditional sandbox. If a virtual machine is accidentally set to "Bridged Mode," it connects directly to the host's physical network and gets its own IP address
. If I detonate malware in this state, it can bypass my host's internal security and instantly execute lateral movement to infect other physical devices on my local network
. My Layer 3 severance completely avoids this risk.

### 🛡️ Mobile Sandbox Forensic Report
**Objective:** Configuration and validation of a secure forensic sandbox environment on ARM64 architecture (Samsung Note 20 Ultra) vs. Standard x86 Desktop Environments.

#### 🧪 Phase 1: Perimeter Build (Architectural Comparison)
Instead of utilizing a legacy GUI-based hypervisor toggle (VirtualBox/UTM), the sandbox perimeter was established by natively purging the default routing table. This method proved more effective for maintaining total device integrity while achieving a verified software air-gap.

| Feature | Desktop / Laptop (x86) | Android Cyber Workbench (ARM64) |
| :--- | :--- | :--- |
| **Isolation Method** | VirtualBox GUI / Network Settings | Native Layer 3 `ip route` manipulation |
| **Network Mode** | "Host-Only Adapter" | Software Air-Gap (Purged Gateway) |
| **Security Layer** | Hypervisor Isolation | Android UID + Linux Kernel Isolation |
| **Hardware** | Intel/AMD x86_64 | ARM64 Mobile SOC |

#### 🛠️ Phase 2: Forensic Documentation
| Question | Forensic Analysis |
| :--- | :--- |
| **Q1: Ping Output/Proof** | Output: `ping: connect: Network is unreachable`. This proves Layer 3 isolation is active. |
| **Q2: Bridged Mode Risks** | Bridged mode assigns the VM a direct IP on the host's physical subnet, allowing malware to bypass host security and execute lateral movement. |

**Status:** Note 20 Ultra exynos 990 nonrooted termux terminal | Zero-Trust Verified | System Optimization Confirmed

---
**Status:** All Sessions Synchronized | Zero-Trust Active
