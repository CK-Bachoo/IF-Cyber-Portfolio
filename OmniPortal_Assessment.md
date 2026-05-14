==================================================
TLAB 9: OPERATION OMNI-PORTAL — ASSESSMENT REPORT
==================================================

PHASE 1 — BREAKING THE GATE (SQL Injection)
* Target Endpoint: http://127.0.0.1:8090/login
* Payload Used: ' OR 1=1 --
* Method: Injected tautology into the 'user' field with blank password via GET request
* Result: Authentication bypassed. Server returned "Logged in!" and exposed the View My Orders link at /api/v2/orders/502

PHASE 2 — POISONING THE WELL (Stored XSS)
* Target: http://127.0.0.1:8090/support
* Payload Used: <script>alert(document.cookie)</script>
* Method: Posted JavaScript payload to Support Board comment field. Payload is stored server-side and executes for every user who loads the page.
* auth_token Cookie Value Captured: SUPPORT_TIER_1_SECRET_TOKEN
* Impact: Any visitor to the Support Board has their session cookie exposed to the attacker, enabling full session hijacking.

PHASE 3 — DEEP DATA MINING (API BOLA)
* Target Endpoint: http://127.0.0.1:8090/api/v2/orders/502
* Method: Enumerated adjacent order IDs (501-505) using curl with stolen auth_token cookie
* Confidential Order Found: Order ID 501
* Order Details: {"amount":"$15,000.00","details":"Confidential Server Lease","order_id":501}
* Impact: Financial data belonging to another account was fully exfiltrated with zero authorization check.

PHASE 4 — REMEDIATION
* SQLi Fix: Parameterized queries (prepared statements) eliminate SQL injection by separating SQL logic from user input. User-supplied strings are treated as data only and never executed as SQL commands.
* XSS Fix: All user-supplied input must be HTML-encoded before being rendered in the browser. A Content Security Policy (CSP) header provides an additional layer by restricting which scripts the browser is permitted to execute.
* API BOLA Fix: The orders endpoint must implement server-side ownership validation. Before returning order data, the API must verify that the authenticated user's session token matches the account that owns the requested order ID. Object IDs alone must never serve as access control.
