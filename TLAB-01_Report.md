# TLAB-01: OPERATION CLEAN SWEEP
## Incident Response Report — Eradication Phase

**Analyst:** Chad K. Bachoo | IF-CS-26 | The Knowledge House
**Environment:** Samsung Note 20 Ultra / Termux ARM64
**Date:** 2026-03-26
**Classification:** Internal — Portfolio Evidence

---

## Objective
Identify and eradicate unauthorized artifacts from a compromised file system. Extract forensic IoCs and verify system integrity post-cleanup.

---

## Methodology
1. Enumerated active files using `ls -la` in dual Termux terminal session
2. Parsed system logs using `grep` and `split()` to isolate anomalous entries
3. Identified unauthorized artifacts by cross-referencing known-bad IP signatures
4. Executed eradication using `rm` with hash verification pre/post removal
5. Applied `chmod 700` to secure residual artifacts

---

## Forensic Findings — Indicators of Compromise (IoCs)

| IoC Type | Value | Source |
|---|---|---|
| Malicious IP | 10.99.88.77 | access.log |
| Malicious IP | 45.33.22.11 | access.log |

---

## Result
Unauthorized artifacts removed. Hash verification confirmed clean state.
System returned to secure baseline. No persistence mechanisms detected.

---

## Framework Alignment
- **NIST CSF:** RS.MI — Mitigation / Eradication
- **CIS Control:** CIS 8 — Audit Log Management
- **CIA Triad:** Integrity
