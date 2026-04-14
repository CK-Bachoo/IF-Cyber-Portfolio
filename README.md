# IF-Cyber-Portfolio: Mobile Cybersecurity Workbench

**Built 100% on Samsung Galaxy Note 20 Ultra + Termux **

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

| Session   | Function              | Attack Vector / Concept                          | NIST CSF 2.0 | CIS Control | CIA Triad     | Evidence Artifact          |
|-----------|-----------------------|--------------------------------------------------|--------------|-------------|---------------|----------------------------|
| S01      | System Discovery     | Unmapped Asset Inventory                        | ID.AM       | CIS 1      | Integrity    | discovery.txt             |
| S02      | Access Control       | Privilege Escalation                            | PR.AC       | CIS 3      | Confidentiality | harden.sh                |
| S03      | Log Parsing          | SQLi / Brute Force                              | DE.AE       | CIS 8      | Integrity    | threat_ips.txt            |
| TLAB 1   | Clean Sweep          | Active Intrusion / Persistence                  | RS.AN       | CIS 17     | Integrity    | TLAB-01_Report.md         |
| S04      | The Wire             | Network Sabotage                                | PR.PT       | CIS 4      | Availability | network_audit.txt         |
| S05      | Subnetting           | Network Isolation                               | PR.NW       | CIS 12     | Availability | subnet_audit.txt          |
| S06      | Protocol Analysis    | DNS Deception / Service Discovery               | DE.CM       | CIS 9      | Confidentiality | protocol_audit.txt       |
| TLAB 2   | Blackout             | System Sabotage / Recovery                      | RS.RP       | CIS 17     | Availability | tlab_report.txt           |
| S07      | Python Sentry        | Reconnaissance (Vulnerability)                  | ID.RA       | CIS 12     | Availability | port_check.py             |
| S08      | Memory Audit         | RAM-Resident Brute Force                        | DE.CM       | CIS 8      | Confidentiality | brute_report.txt         |
| S09      | Automation Pivot     | Malware Detonation Attempt                      | PR.IP       | CIS 16     | Integrity    | system_auditor.py         |
| TLAB 3   | Automated Hunt       | Remote Code Execution (RCE)                     | RS.MI       | CIS 17     | Integrity    | incident_response.py      |
| S10      | Layer 3 Sandbox      | C2 Exfiltration (The Air Gap)                   | PR.PT       | CIS 12     | Confidentiality | sandbox_verify.txt       |
| S11      | Container Rev        | Configuration Drift / Static Infra              | PR.DS       | CIS 12     | Integrity    | deploy_web.sh             |
| S12      | Fleet Orchestr.      | Lateral Movement / Data Breach                  | PR.NW       | CIS 14     | Confidentiality | docker-compose.yml       |
| TLAB 4   | Cloud Fleet          | Rogue Service Infrastructure                    | ID.GV       | CIS 1      | Accountability | hyperstack_audit.json    |T1 M1 S13 | Automated Onboarding | Identity Provisioning | PR.AC | CIS 5 | Integrity | onboard_engineers.ps1
S13 | Automated Onboarding | Identity Provisioning | PR.AC | CIS 5 | Integrity | onboard_engineers.ps1
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

### 🚀 T1-M1-S11: THE CONTAINER REVOLUTION (Comparative Deployment)

| Data Point | Desktop User (Standard Cohort) | Android Cyber Workbench (Note 20 Ultra) |
| ------ | ------ | ------ |
| **Architecture** | Native x86_64 Hardware | **ARM64 Mobile Staging Layer** |
| **Provisioning** | Local Docker Desktop GUI | **Mobile-to-Cloud Bridge (Google Cloud Shell)** |
| **Methodology** | Native Hardware Execution | **Remote Orchestration via Chrome Mobile** |
| **Isolation** | Shared OS Kernels | **Server-side Linux Namespaces** |
| **Evidence** | N/A | **Evidence: [Commit 505146c](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/505146c3635d998e8d4257c4bfa81ea3e86c427c)** |

🛡️ **Operational Defense Logic (White Hat Auditor Common Questions)**

**White Hat Auditor Question:** "Why didn't you just run Docker locally like the rest of the cohort?"

**Response:**
"My workstation is a Samsung Note 20 Ultra engineered for Purple Team mobility. While the standard x86 desktop allows for local Docker execution, Android's kernel security (Samsung Knox) intentionally restricts the high-level system calls required by the Docker daemon. To bypass this hardware constraint while maintaining the mission objective, I engineered a **Mobile-to-Cloud Bridge**. 

By utilizing Google Cloud Shell as my remote compute layer, I was able to orchestrate enterprise-grade containers directly from my mobile terminal. This methodology is actually superior for security operations as it offloads the thermal strain and compute risks to a sandbox in the cloud, preserving the integrity of my local 'Bunker' device."

**White Hat Auditor Question:** "How did you prove the container was actually isolated?"

**Mechanical Proof:**
"I verified process isolation by executing `ps aux` within the Alpine environment. In a standard Linux environment, that command would return dozens of system-level processes. Within my container, the PID tree was segregated, returning only the primary shell and the process check itself. This mathematically proved that Linux **namespaces** were successfully caging the environment."

**White Hat Auditor Question:** "What was the point of the 'deploy_web.sh' script?"

**Engineering Statement:**
"The script transforms a manual operational task into **Infrastructure as Code (IaC)**. By codifying the `docker run` command with detached flags (`-d`) and dynamic port mapping (`-p 8080:80`), I ensured that the deployment of the training server was repeatable and immutable. This removes human error from the provisioning phase and allows for the immediate, forensic destruction of the server post-mission to ensure a zero-footprint architecture."

---

## 🛡️ Strategic Defense: Why the Container Revolution?

**Security Objective:** To transition from "Static Infrastructure" (which is expensive, slow to patch, and offers a permanent attack surface) to "Disposable Infrastructure."

### 🏗️ Technical Mechanics: Standard x86 vs. Note 20 Ultra Rig

**Standard Desktop Approach (Monolithic Execution):**
The average analyst uses an x86 laptop to run Docker Desktop locally. This requires the Docker daemon to share the same kernel as the host operating system. If a container escape occurs, the attacker has a direct path to the analyst’s personal files and hardware. This also puts immense thermal and computational stress on a single local device.

**Note 20 Ultra Approach (Distributed Execution):**
By engineering a **Mobile-to-Cloud Bridge**, I decoupled the Command Layer from the Compute Layer. 
1. **Command:** Note 20 Ultra (Termux/Chrome Mobile).
2. **Compute:** Google Cloud Shell (ephemeral Debian VM).
3. **Isolation:** I deployed an Nginx server within an isolated namespace on a remote instance. This creates a "Double Sandbox": the malware is trapped in a container, which is itself trapped in an ephemeral cloud VM. 

**Mechanical Proof of Deployment:**
* **`docker pull nginx`**: Retrieved the official signed image from the registry.
* **`docker run -d -p 8080:80`**: Launched the service in detached mode, mapping port 8080 on the cloud host to the internal port 80.
* **`docker exec`**: Interrogated the running container to verify the web root.
* **`docker rm -f`**: Forensically purged the entire environment post-operation to ensure zero persistence.

**Status:** Strategic Defense Validated | Infrastructure Decoupled | Phase 1 Finalized.

### 🎼 T1-M1-S12: THE CONDUCTOR & THE FLEET (Segmented Orchestration)

| Data Point | Desktop User (Standard Cohort) | Android Cyber Workbench (Note 20 Ultra) |
| ------ | ------ | ------ |
| **Architecture** | Local Monolithic Stack | **Distributed Multi-Network Fleet** |
| **Provisioning** | Manual Container Launch | **Infrastructure as Code (Docker Compose)** |
| **Networking** | Shared Bridge Network | **Segmented FrontEnd/Internal BackEnd** |
| **Isolation** | Standard Exposure | **Verified Layer 3 Air-Gap (Internal: True)** |
| **Evidence** | N/A | **[docker-compose.yml](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/docker-compose.yml)** |

🛡️ **Operational Defense Logic (White Hat Auditor Common Questions)**

**White Hat Auditor Question:** "Why did you use Docker Compose instead of manual 'docker run' commands for this stack?"

**Response:**
"Managing a multi-tier stack (Web + DB) with manual commands is prone to human error and configuration drift. By utilizing **Docker Compose**, I moved to a declarative **Infrastructure as Code (IaC)** model. This ensures that the entire fleet—including the specific network segments and isolation rules—is version-controlled and reproducible. In a production environment, this allows for 'single-command' deployment of complex, secure architectures."

**White Hat Auditor Question:** "How did you mathematically guarantee the database cannot be reached by an external attacker?"

**Mechanical Proof:**
"I engineered a dedicated `backend` network using the `internal: true` flag in the YAML configuration. This instruction prevents Docker from creating a NAT gateway to the public internet for that specific segment. I forensically verified this by executing `docker-compose exec db ping google.com`. The system returned `Network is unreachable`, confirming that the database exists in a cryptographically isolated layer with no exit path for data exfiltration."

**White Hat Auditor Question:** "How does the WordPress server talk to the DB if the DB is air-gapped?"

**Engineering Statement:**
"I implemented **Micro-segmentation**. The WordPress container acts as the 'Bridge'; it is assigned to both the `frontend` (for public traffic) and the `backend` (for database queries). The DB container is assigned **only** to the `backend`. This ensures that while the web server can serve users, the database is physically unable to initiate or receive traffic from the outside world, enforcing the Principle of Least Privilege at the network layer."

---

Status: S12 Segmented Fleet Active | Air-Gap Verified | Phase 1 Portfolio Locked.

---
### 🧠 S12 Mission Defense Matrix (Executive Summary)
* **Strategic Explanation:** Transitioned from single-container management to full-stack orchestration using Docker Compose. Engineered a segmented network architecture to enforce a micro-segmented air-gap between the public web application and the sensitive database.
* **Technical Mechanics:** Utilized a YAML configuration to define a dual-network topology (Frontend/Backend). Implemented the `internal: true` flag on the backend network to mathematically suppress the default gateway, preventing any outbound communication from the database container.
* **Mechanical Proof:** Verified the air-gap via `docker-compose exec db ping google.com`. The resulting `Network is unreachable` error serves as forensic proof that the database is locked in a private, non-routable namespace with zero external exit paths.
![S12 Orchestration 'Up' Evidence](s12%20status%20up%20screenshot2.png)

---
### 🏰 P1-W4-TLAB-04: Operation Cloud Fleet (Hyper-Stack Architecture)

| Data Point | Desktop User (Standard Cohort) | Android Cyber Workbench (Note 20 Ultra) |
| :--- | :--- | :--- |
| **Architecture** | Standard x86/x64 Desktop / Local VM | **ARM64 Mobile SOC (Exynos 990, 12GB RAM)** |
| **Provisioning** | Local Docker Desktop GUI | **Mobile-to-Cloud Bridge (Google Cloud Shell)** |
| **Networking** | Host-Only Adapter (VirtualBox) | **Cloud-native dual-network topology** |
| **Isolation** | Hardware-based VM segregation | **Software Air-Gap via `internal: true` flag** |
| **Evidence** | N/A | **[Commit 9d02e65 - TLAB 4 Complete](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/9d02e653644bb80c4fd35fd6a5c543fb2d1fef03) (https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/e7446d2280cf0bb12dcdb1cebe231d7ec0c1410c)** |
S13 | Automated Onboarding | Identity Provisioning | PR.AC | CIS 5 | Integrity | onboard_engineers.ps1

🛡️ **Operational Defense Logic (White Hat Auditor Common Questions)**

**White Hat Auditor Question:** "How did you perform a multi-tier container orchestration lab designed for x86 Virtual Machines exclusively on an ARM64 mobile device?"

**Response (Strategic Execution):**
"By strictly decoupling my Command Layer from my Compute Layer. Because Samsung Knox restricts the low-level kernel namespaces required to run a native Docker Daemon on my Note 20 Ultra, I utilized Google Cloud Shell as a headless remote engine. I engineered the entire `docker-compose.yml` stack natively via the Chrome mobile browser, maintaining the core objective of a 100% mobile-first workflow without sacrificing enterprise-grade orchestration."

**White Hat Auditor Question:** "How did you prove the database was isolated without using GUI-based testing tools?"

**Mechanical Proof:**
"I used declarative Infrastructure as Code (IaC) followed by a network audit. I placed the MariaDB container exclusively on a `private_net` utilizing the `internal: true` flag, mathematically suppressing the default gateway. I then audited the perimeter using `nmap localhost`. The scan forensically proved that while Port 8080 (WordPress) was open to the public, Port 3306 (MariaDB) was entirely filtered and inaccessible from the host."

**🧠 TLAB-04 Mission Defense Matrix (Executive Summary)**
* **Mission Objective:** Deploy a three-tier containerized stack in a hardened, isolated hybrid architecture. Evict squatter containers, orchestrate a WordPress + MariaDB stack with segmented networks, verify isolation, and produce a machine-readable audit report.
* **Technical Mechanics:**
    1. Evicted a rogue `decoy_web` container to secure Port 80.
    2. Engineered a custom `docker-compose.yml` from scratch utilizing Docker Compose V2 syntax.
    3. Implemented a dual-network topology (`public_net` / `private_net`), specifically applying the `internal: true` flag to the database backend to create a software air-gap.
    4. Audited the deployment using `nmap`, verifying Port 8080 was open and 3306 was filtered.
    5. Generated a dynamic `hyperstack_audit.json` log capturing the exact container IDs and isolated network IPs.


👔 T1-M1-S13: THE CORPORATE BRAIN (Automated Onboarding)
Data Point | Desktop User (Standard Cohort) | Android Cyber Workbench (Note 20 Ultra)
Architecture | Heavy Windows Server VM (Local) | Ephemeral Azure Cloud Shell
Provisioning | GUI-based Active Directory | PowerShell Automation (IaC)
Environment | Persistent Local Hypervisor | Remote Stateless Execution
Security Posture | Implicit Trust (Manual) | Enforced Reset (-ChangePasswordAtLogon $true)
Evidence | N/A | Commit 7320c7a - Automated Engineer Onboarding Script (https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/7320c7a)
🛡️ Operational Defense Logic (White Hat Auditor Common Questions)
White Hat Auditor Question: "Why did you build a Windows Server deployment script in an ephemeral Azure Cloud Shell instead of a local VM?"
Response (Strategic Execution): "Because my primary operational rig is an ARM64 Samsung Note 20 Ultra. Emulating an x86 Windows Server via QEMU or VirtualBox locally introduces massive thermal and compute overhead. I bypassed this hardware constraint by pivoting to an Azure Cloud Shell, allowing me to engineer and deploy the PowerShell automation script natively in a cloud environment before extracting the artifact via GitHub."
White Hat Auditor Question: "How did you ensure the Active Directory accounts were secure upon creation?"
Mechanical Proof: "I implemented a programmatic fail-safe using the -ChangePasswordAtLogon $true flag within the New-ADUser loop. This enforces Zero Trust by guaranteeing that the default provisioning password is automatically invalidated the moment the engineer logs in, forcing cryptographic credential rotation."
🧠 S13 Mission Defense Matrix (Executive Summary)
Mission Objective: Automate the mass onboarding of engineers into a Sovereign Domain using PowerShell, bypassing slow and error-prone manual GUI creation.
Technical Mechanics: Executed a cross-cloud staging maneuver. Connected to an Azure Cloud Shell, generated a for loop integrating New-ADUser to populate the OU=Engineering,DC=titan,DC=local Organizational Unit, and secured the payload.
Mechanical Proof: Authenticated the remote session via a GitHub Personal Access Token (PAT) and pushed the onboard_engineers.ps1 artifact directly to version control before the ephemeral cloud instance destructed.

### S13 | Automated Onboarding | Identity Provisioning | PR.AC | CIS 5 | Integrity | onboard_engineers.ps1

👔 **T1-M1-S13: THE CORPORATE BRAIN (Automated Onboarding)**

| Data Point | Desktop User (Standard Cohort) | Android Cyber Workbench (Note 20 Ultra) |
| --- | --- | --- |
| Architecture | Heavy Windows Server VM (Local) | Ephemeral Azure Cloud Shell |
| Provisioning | GUI-based Active Directory | PowerShell Automation (IaC) |
| Environment | Persistent Local Hypervisor | Remote Stateless Execution |
| Security Posture | Implicit Trust (Manual) | Enforced Reset (-ChangePasswordAtLogon $true) |
| Evidence | N/A | [Commit 7320c7a](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/commit/7320c7a) |

🛡️ **Operational Defense Logic (White Hat Auditor Common Questions)**

**White Hat Auditor Question:** "Why did you build a Windows Server deployment script in an ephemeral Azure Cloud Shell instead of a local VM?"

**Response (Strategic Execution):** "Because my primary operational rig is an ARM64 Samsung Note 20 Ultra. Emulating an x86 Windows Server via QEMU or VirtualBox locally introduces massive thermal and compute overhead. I bypassed this hardware constraint by pivoting to an Azure Cloud Shell, allowing me to engineer and deploy the PowerShell automation script natively in a cloud environment before extracting the artifact via GitHub."

**White Hat Auditor Question:** "How did you ensure the Active Directory accounts were secure upon creation?"

**Mechanical Proof:** "I implemented a programmatic fail-safe using the `-ChangePasswordAtLogon $true` flag within the `New-ADUser` loop. This enforces Zero Trust by guaranteeing that the default provisioning password is automatically invalidated the moment the engineer logs in, forcing cryptographic credential rotation."

🧠 **S13 Mission Defense Matrix (Executive Summary)**

* **Mission Objective:** Automate the mass onboarding of engineers into a Sovereign Domain using PowerShell, bypassing slow and error-prone manual GUI creation.
* **Technical Mechanics:** Executed a cross-cloud staging maneuver. Connected to an Azure Cloud Shell, generated a for loop integrating `New-ADUser` to populate the `OU=Engineering,DC=titan,DC=local` Organizational Unit, and secured the payload.
* **Mechanical Proof:** Authenticated the remote session via a GitHub Personal Access Token (PAT) and pushed the `onboard_engineers.ps1` artifact directly to version control before the ephemeral cloud instance destructed.

