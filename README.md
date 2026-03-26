# IF '26 Cyber Security Phase 1 Portfolio
**Operator:** CK-Bachoo | **Platform:** Note 20 Ultra Bunker (Termux ARM64)

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
