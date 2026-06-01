# INCIDENT RESPONSE REPORT: PHANTOM PURSUIT
**Operator:** C.K. Bachoo | TKH Innovation Fellow IF-CS-26 NY

## PHASE 1: SIEM CORRELATION
* **Initial Alert Source IP:** 203.0.113.99
* **Event Type:** Critical Alert — Unauthorized External Access Attempt
* **Detection Method:** Kibana enterprise_logs* index pattern query — searched "Critical Alert" in Discover tab

## PHASE 2: LIVE TRIAGE & CHAIN OF CUSTODY
* **Suspicious Process ID (PID):** 10
* **Process:** nc (netcat) listening on port 4444 — active C2 beacon
* **Evidence SHA256 Hash:** cd52d81e25f372e6fa4db2c0dfceb59862c1969cab17096da352b34950c973cc
* **Evidence File:** compromised_drive.dd
* **Triage Method:** docker exec -it quarantined_host /bin/sh — netstat -antp confirmed PID 10/nc on 0.0.0.0:4444

## PHASE 3: DISK FORENSICS
* **Deleted File:** beacon.exe (marked with * in MFT — deleted entry)
* **Deleted File Inode Number:** 12
* **Extraction Method:** icat compromised_drive.dd 12 > recovered_payload.txt
* **Extracted Payload Data:**
  Threat Actor: TitanCorp_Insider_Threat
  Payload: beacon.exe
  C2 Server: 203.0.113.99:4444
  Persistence: Registry Run Key HKLM\Software\Microsoft\Windows\CurrentVersion\Run
  Timestamp: 2026-05-20 18:00:00 UTC
  Mission: Exfiltrate salary_data.enc via reverse shell

## FORENSIC NOTES
Cloud Shell kernel restricts loopback device creation (mount error on /dev/loop0).
Raw binary carving via strings performed as forensic bypass methodology.
PID and SHA256 hash verified via live container execution and sha256sum.
