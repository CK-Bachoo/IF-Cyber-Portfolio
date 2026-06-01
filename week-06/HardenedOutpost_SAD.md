# SECURITY ARCHITECTURE DOCUMENT: TITAN SMALL BUSINESS SERVICES

## 🏫 Innovation Fellow: Chad K. Bachoo (IF-CS-26 NY)
## 📱 Platform: Samsung Note 20 Ultra (Termux Bunker)

---

### 🛡️ Phase 1: Perimeter Hardening
**SSH Lockdown:**
- Command: sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
- Command: sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
- Action: Restricted administrative access to RSA key-holders only.

**UFW Configuration:**
- sudo ufw default deny incoming
- sudo ufw allow 22/tcp
- sudo ufw allow 8080/tcp
- Action: Enforced Default Deny posture; exposed only mission-critical ports.

---

### 🐍 Phase 2: Automated Auditor (Python)
**Script:** `dc_auditor.py`
**Objective:** Maintain high availability monitoring for the Windows Domain Controller.
**Logic:** Uses `os.system` to trigger ICMP probes and logs state transitions to `/var/log/dc_audit.log`.

---

### 🏰 Phase 3: Containerized Stack (Docker)
**Orchestration:** Docker Compose
**Architecture:**
- Frontend: `wiki` (Nginx) serving as the primary UI.
- Backend: `db` (MySQL) isolated via micro-segmentation.
- Security: Implemented `internal: true` on the backend network to create a mathematical software air-gap, preventing database exfiltration.

---

### ⚖️ Final Governance Alignment
- NIST CSF 2.0: PR.DS (Data Security), PR.AC (Access Control)
- CIS Control: 3 (Data Protection), 4 (Secure Configuration)
- CIA Triad: Integrity (Audit Logs), Confidentiality (Air-Gap)
