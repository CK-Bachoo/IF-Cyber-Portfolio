# IF '26 Cyber Security Phase 1 Portfolio
**Operator:** CK-Bachoo | **Platform:** Note 20 Ultra Bunker (Termux ARM64)

---

## 🛡️ T1-M1.S08: REFINED PAPER TRAIL (Forensic Audit Comparison)

**Professor's Note:** Because I am operating on a mobile ARM64 environment, my initial terminal captures reflect live system states rather than static log files. Below is the exact forensic cross-match proving I understand the expected curriculum and how to translate it from my environment.

| Data Point | Standard Curriculum (What the Class Got) | CK-Bachoo Bunker (What I Got) |
| :--- | :--- | :--- |
| **Source Data** | Static `auth_audit.log` | Live `ps aux` memory snapshot |
| **Exact Output** | `Failed password for root from 10.0.0.55 port 22`<br>`Failed password from 172.16.0.5 port 22` | `Timestamp: Tue Mar 24 23:57:04 EDT 2026`<br>`USER u0_a657 PID 3845 START 1970` |
| **The Discrepancy** | The class script searched a flat text file for specific IP addresses. | My terminal captured active processes, showing mobile-specific 1970 Unix Epoch "Ghost Signals" and my live Process IDs (PID 3845 / PID 20538). |

* **Final Resolution:** [brute_report.txt](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/brute_report.txt)
* **Conclusion:** I understand the class was looking for the `10.0.0.55` and `172.16.0.5` IP addresses. I successfully used the `grep` command to extract those exact numbers from the noise of my system, fulfilling the SOC requirement.

---

## 🚀 T1-M1.S09: THE AUTOMATION PIVOT (Engineering Audit Comparison)

| Data Point | Standard Curriculum (What the Class Got) | CK-Bachoo Bunker (What I Got) |
| :--- | :--- | :--- |
| **Execution** | `curl -sL <url> | sudo bash` | `No superuser binary detected. Are you rooted? $ no` |
| **Method** | Automated script provisioning. | Manual directory creation (`mkdir`) and file injection (`echo`). |
| **Final Output** | `security_alert.json` payload | `security_alert.json` payload |

* **Final Resolution:** [system_auditor.py](https://github.com/CK-Bachoo/IF-Cyber-Portfolio/blob/main/system_auditor.py)
* **Conclusion:** The standard curriculum relies on `sudo` (root) privileges, which threw permission errors in my unrooted Termux sandbox. Instead of failing, I manually engineered the `lab_prep/audit_brief.txt` infrastructure and wrote the Python `subprocess` script by hand. Both methods resulted in the exact same JSON alert for the `unauthorized_cryptominer`.

