# TEPP: The Final Reckoning — Postmortem Analysis
**Operator:** C.K. Bachoo | IF-CS-26 NY

## Phase 0 — Reconnaissance
Subnet 172.99.0.0/24 was audited. Three live hosts identified via ping sweep. Nmap version scanning identified nginx 1.29.8, Redis 8.6.2, and Apache 2.4.66. These services represent a significant attack surface; outdated web servers without WAF protection are prone to automated exploitation.

## Phase 1 — Rapid Triage
I documented three servers. Each was remediated by applying strict permission masks and service re-configuration. For example, remediation of the Apache service involved configuring hardening parameters to mitigate directory traversal risks. These triage actions are essential in enterprise environments to prevent initial access by unauthorized actors.

## Phase 2 — The Breach
Forensic analysis identified the attacker IP: 203.0.113.99 at timestamp 2026-05-14 02:00. The malicious netcat listener on port 4444 (PID 10) was isolated. I deployed an iptables rule: `iptables -A INPUT -s 203.0.113.99 -j DROP` to quarantine the source. A real SOC would deploy an EDR (Endpoint Detection and Response) agent to automatically kill anomalous processes upon detection.

## Phase 3 — Full Spectrum
The listener was configured on port 8080 to bypass egress filtering. Command injection was possible due to lack of input sanitization in the web application. The iptables lockdown command `iptables -A INPUT -p tcp --dport 8080 -j DROP` was applied. 
This breach demonstrates that defense-in-depth is the only reliable security model. A single control, such as a robust WAF, would have prevented the initial injection by filtering the payload at the perimeter, effectively neutralizing the kill chain before it could reach the host level.
