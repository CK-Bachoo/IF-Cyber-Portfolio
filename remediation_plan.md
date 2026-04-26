# CloudNano Vulnerability Remediation Plan
## Operator: C.K. Bachoo | S21 | Priority Triage

### Selected Top 5 Vulnerabilities by Risk = Likelihood x Impact

1. **[CVSS 9.8] Unauthenticated AWS S3 Bucket (Customer PII)**
   Justification: This is the highest actual risk - the bucket is publicly accessible today and directly exposes customer PII, making both likelihood and impact critical, with immediate regulatory and reputational consequences.

2. **[CVSS 9.8] Remote Code Execution in Apache Struts (Internet-Facing Web Server)**
   Justification: An internet-facing RCE vulnerability has near-certain likelihood of exploitation by automated scanners and threat actors, and successful exploitation grants full server control, making this an immediate remediation priority.

3. **[CVSS 8.1] SQL Injection in Login Page (Customer Database Portal)**
   Justification: The login page is the direct gateway to the customer database - successful injection allows credential bypass and full data exfiltration, combining high likelihood of attack with catastrophic impact on customer data integrity.

4. **[CVSS 8.8] Cross-Site Scripting (XSS) on Support Forum**
   Justification: A public-facing support forum with XSS is actively reachable by attackers and customers alike, enabling session hijacking and credential theft at scale against a trusted business surface.

5. **[CVSS 7.5] Outdated PHP Version 5.4 (Public Marketing Blog)**
   Justification: PHP 5.4 is end-of-life with no security patches, and its public exposure on the marketing blog provides a reliable foothold for attackers to pivot into internal infrastructure.

### Deprioritized (Notable)
- [CVSS 10.0] Default Credentials on Internal Router: Despite the maximum CVSS score, the air-gapped network with no physical access severely reduces exploitability - this is not the top priority.
