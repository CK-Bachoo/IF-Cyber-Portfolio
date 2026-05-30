# Portfolio Audit — Week 12
**Student:** Chad K. Bachoo | TKH Innovation Fellow IF-CS-26 NY
**Date:** May 30, 2026
**Repository:** https://github.com/CK-Bachoo/IF-Cyber-Portfolio

## Repository Structure Audit

All sessions S01–S33 and TLAB-01 through TLAB-11 have been completed and artifacts pushed to this repository. Due to the mobile-first ARM64 workflow (Samsung Note 20 Ultra + Termux), all artifacts were pushed to the root directory rather than week-organized folders, as the mobile workflow prioritized artifact delivery over folder structure. All artifacts are publicly accessible and verifiable by commit hash.

## Session Completion Summary

| Week | Sessions | Status |
|------|----------|--------|
| W1 | S01–S03, TLAB-01 | Complete |
| W2 | S04–S06, TLAB-02 | Complete |
| W3 | S07–S09, TLAB-03 | Complete |
| W4 | S10–S12, TLAB-04 | Complete |
| W5 | S13–S15, TLAB-05 | Complete |
| W6 | S16–S18 | Complete |
| W7 | S19–S21, TLAB-W7 | Complete |
| W8 | S22–S24, TLAB-08 | Complete |
| W9 | S25–S27, TLAB-09 | Complete |
| W10 | S28–S30, TLAB-10 | Complete |
| W11 | S31–S33, TLAB-11 | Complete |
| W12 | Portfolio Audit, TEPP | In Progress |

## Key Artifacts

- **discovery.txt** — S01 system discovery
- **network_audit.txt** — S03/S04 network analysis
- **subnet_audit.txt** — S05 subnetting
- **protocol_audit.txt** — S06 protocol analysis
- **harden.sh** — S02/TLAB-02 hardening script
- **TLAB-01_Report.md** — Operation Clean Sweep incident response
- **threat_ips.txt** — S03 threat intelligence
- **access.log** — forensic evidence artifact

## Technical Differentiator

This portfolio was engineered exclusively on a Samsung Galaxy Note 20 Ultra (Exynos 990, ARM64) using Termux and Google Cloud Shell as a Mobile-to-Cloud bridge. No laptop or desktop was used at any point. This constraint was formally documented and approved by Prof. Robbins, who confirmed in writing that the mobile-only workflow earns full credit on completed assignments.

## Professional Reflection

This fellowship has been a defining engineering challenge. Operating from a non-rooted ARM64 smartphone forced creative problem-solving at every phase — from bypassing VirtualBox dependencies to capping JVM heap sizes to run a full ELK SIEM stack in an ephemeral container. Each constraint produced a documented workaround that deepened practical understanding beyond what a standard desktop environment would have required.

The progression from basic Linux commands in S01 to full Defense in Depth architecture in TLAB-11 (Operation Fortress) represents genuine skill development. The MITRE ATT&CK, D3FEND, CAPEC, and OWASP frameworks are now applied instinctively to threat analysis rather than as academic exercises.

The mobile-first Purple Team methodology developed here — documented as Project Dreadnought — forms the foundation for post-graduation professional work. The constraint became the differentiator.

**Bachoo, C. K. (2026).** *Mobile-first cybersecurity engineering: Zero-trust architecture on constrained ARM64 hardware.* The Knowledge House Innovation Fellowship IF-CS-26 NY.
