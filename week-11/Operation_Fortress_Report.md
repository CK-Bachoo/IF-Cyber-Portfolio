# OPERATION FORTRESS — Defense in Depth Report
**Operator:** C.K. Bachoo | TKH Innovation Fellow IF-CS-26 NY

## LAYER 1 — Firewall (Egress Filtering)
iptables -A OUTPUT -d 198.51.100.0/24 -j DROP

## LAYER 2 — IDS (Suricata Signature)
alert tcp any any -> any 80 (msg:"Web Shell Detected"; content:"cmd=whoami"; sid:1000005; rev:1;)

## LAYER 3 — Endpoint (Sysmon XML Policy)
<CommandLine condition="contains">curl http://198.51.100.5</CommandLine>
