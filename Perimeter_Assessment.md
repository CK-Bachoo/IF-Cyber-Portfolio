# Perimeter Assessment Report
## Operation Shadow Map — TitanCorp DMZ Audit
**Operator:** C.K. Bachoo | TLAB-W7 |
**Target Subnet:** 172.88.0.0/24
**Date:** 2026-04-26

---

## Phase 1 — Subnet Sweeping (Active Recon)

### Ping Sweep Results (nmap -sn 172.88.0.0/24)
Four hosts discovered. Gateway at 172.88.0.1. Three live assets identified:

| IP Address | Status | Port | Service | Version |
|---|---|---|---|---|
| 172.88.0.10 | Live | 80/tcp | HTTP | nginx 1.14.2 |
| 172.88.0.15 | Live | None open | Cache Database | Redis (no exposed ports) |
| 172.88.0.20 | Live | 80/tcp | HTTP | Apache httpd 2.4.66 (Unix) |

**Tool:** nmap -sV 172.88.0.10 172.88.0.15 172.88.0.20

---

## Phase 2 — Vulnerability Auditing

### Web Server 1 — 172.88.0.10 (nginx 1.14.2)
**Tool:** Nikto v2.1.5
**Major Finding:** nginx 1.14.2 is an outdated version released in 2018 and is end-of-life with no active security patches. The server also leaks inode data via ETags and is missing the X-Frame-Options security header, exposing users to clickjacking attacks.

### Web Server 2 — 172.88.0.20 (Apache httpd 2.4.66)
**Tool:** Nikto v2.1.5
**Major Finding:** HTTP TRACE method is active (OSVDB-877), making this host vulnerable to Cross-Site Tracing (XST) attacks. Combined with the missing X-Frame-Options header and ETag inode leakage, an attacker can leverage TRACE to steal authenticated session cookies from users interacting with this server.

---

## Phase 3 — Risk Triage

### Top Priority Finding
**172.88.0.10 — nginx 1.14.2 (End-of-Life Web Server)**

**Justification:** This finding represents the greatest real-world risk because the likelihood of exploitation is high — nginx 1.14.2 has been end-of-life since 2018 with publicly documented CVEs and no vendor patches available — and the impact is critical, as a DMZ-facing web server running unpatched software provides an attacker a permanent, reliable foothold into TitanCorps network perimeter with no remediation path short of upgrading the service entirely.

### Risk Matrix
| Finding | Likelihood | Impact | Priority |
|---|---|---|---|
| nginx 1.14.2 (EOL) on 172.88.0.10 | High | Critical | 1 |
| HTTP TRACE enabled on 172.88.0.20 | Medium | High | 2 |
| Missing X-Frame-Options (both hosts) | Medium | Medium | 3 |
| ETag inode leakage (both hosts) | Low | Low | 4 |
| Redis on 172.88.0.15 (no exposed ports) | Low | Low | 5 |
