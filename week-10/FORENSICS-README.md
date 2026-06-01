# Forensic Artifacts & Evidence Files

## Evidence Logs

| File | Source | Purpose | Size |
|------|--------|---------|------|
| `access.log` | System log simulation | TLAB-01 incident response evidence | 353 KB |
| `monitoring_log.txt` | System monitoring | S08 forensic audit capture | 452 B |
| `brute_report.txt` | Failed login analysis | S08 brute force detection | 155 B |

## Retention Policy

These artifacts are retained for:
- Educational demonstration
- Portfolio evidence completeness
- Forensic methodology validation

**Note:** Production portfolios should sanitize or pseudonymize sensitive data in logs.

## Integrity Verification

To verify log integrity, check file hashes:
```bash
# Verify access.log hasn't been tampered with
sha256sum access.log

