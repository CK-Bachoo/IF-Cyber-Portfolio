# 🛡️ Secure Automated Web Architecture
### Enterprise Infrastructure as Code & DevSecOps Shift-Left Deployment
**Author:** Chad K. Bachoo | TKH IF-CS-26 NY | AI Security Architect & DevSecOps Engineer

---

## 🚀 Project Overview & Description
This project provisions a secure, highly available, and publicly accessible web infrastructure on Amazon Web Services (AWS) using HashiCorp Terraform (HCL)[cite: 3, 4]. Built from a blank canvas to simulate an enterprise production rollout, the architecture integrates an automated continuous integration (CI) pipeline using GitHub Actions to enforce static application security testing (SAST) via `tfsec`[cite: 2, 3, 6]. The deployment demonstrates complete Infrastructure as Code (IaC) lifecycle management, zero manual console configuration, and proactive security guardrail enforcement[cite: 2, 3].

---

## 🛠️ Technologies Used
* **Cloud Platform:** Amazon Web Services (AWS — VPC, Subnet, Route Tables, Internet Gateway, Security Groups, EC2)[cite: 3, 4]
* **Infrastructure as Code (IaC):** HashiCorp Terraform (HCL v1.5+)[cite: 2, 3, 7]
* **CI/CD Automation:** GitHub Actions Workflows[cite: 3, 6]
* **Static Application Security Testing (SAST):** Aqua Security `tfsec` (Quality Gate Enforcement with `--soft-fail=false`)[cite: 3, 6]
* **Compute & Web Server:** Amazon Linux 2023 (`t2.micro`), Apache HTTP Server (`httpd`) via automated `user_data`[cite: 4]

---

## 🏛️ Security Architecture & Network Lockdown
[ Internet Traffic ]
│
▼
[ Internet Gateway (IGW) ]
│
▼ (0.0.0.0/0 Route Table)
[ Custom VPC (10.0.0.0/16) ]
│
▼
[ Public Subnet (10.0.1.0/24) | us-east-1a ]
│
▼
[ Security Group (tkh-final-capstone-sg) ]
├── Ingress Port 80 (HTTP): 0.0.0.0/0 (Public Web Access)
├── Ingress Port 22 (SSH): Hardened IP / Restricted Boundary
└── Egress All Ports: Outbound Package & Update Resolution
│
▼
[ EC2 Instance (t2.micro) ] ➔ Automated Apache Bootstrap via user_data


* **Network Segmentation:** The environment is provisioned inside a custom Virtual Private Cloud (`10.0.0.0/16`), fully decoupled from default AWS VPCs to eliminate shared boundary risks[cite: 3, 4]. Compute resources reside in a dedicated public subnet (`10.0.1.0/24`) pinned to Availability Zone `us-east-1a`[cite: 4].
* **Routing Control:** Traffic routing is explicitly codified with an AWS Route Table directing all outbound destinations (`0.0.0.0/0`) through the provisioned Internet Gateway, strictly associated with the public subnet[cite: 3, 4].
* **Least-Privilege Firewall Perimeter:** The security group enforces strict ingress segregation[cite: 3, 4]:
  * Inbound Port 80 (HTTP) is open to `0.0.0.0/0` exclusively to serve web traffic[cite: 3, 4].
  * Inbound Port 22 (SSH) is isolated from global access and scoped to specific operator IP allocations[cite: 3, 4].
  * Full outbound egress is permitted to allow the instance to resolve package updates during initial bootstrap[cite: 3, 4].
* **Automated Quality Gate:** Shift-left security scans run on every push via `tfsec`, halting pull requests and builds if unencrypted storage volumes or insecure ingress rules are detected[cite: 2, 3, 6].

---

## 🏛️ Layman Metaphors & Technical Translation

* **The Self-Assembling Blueprint (Terraform IaC):** Instead of manually clicking through a web console to lay individual bricks and wire sockets, you draft an exact schematic on paper[cite: 3, 4]. Handing that blueprint to Terraform instructs an automated robotic crew to build the entire cloud fortress in under two minutes without missing a bolt[cite: 3, 4].
* **The Airport Security Scanner (GitHub Actions & `tfsec`):** Before any code is deployed to AWS production, it rolls through an automated X-ray inspection[cite: 3, 6]. If the scanner flags an unencrypted volume or an open port, the conveyor belt stops immediately and halts deployment[cite: 3, 6].
* **The Dedicated Highway On-Ramp (VPC Route Table & IGW):** The VPC is an isolated corporate park, and the Internet Gateway is the dedicated on-ramp connecting the internal private road directly to the global interstate[cite: 3, 4].
* **The Double-Door Security Lobby (Security Group Rules):** The front revolving door (Port 80) is open for public visitors to view the catalog, while the executive elevator (Port 22) requires a dedicated keycard[cite: 3, 4].
* **The Robotic Turnkey Caretaker (`user_data` Bootstrap):** Instead of an administrator manually SSHing into a blank server to install software, an automated script runs the exact second the hardware powers on, turning on the web server before the first user arrives[cite: 2, 4].

---

## 📸 Live Deployment Verification
![Live Deployment Proof](./live_deployment_screenshot.png)
*Figure 1.0: Live Apache web server online and serving HTTP traffic via AWS EC2 public IPv4 address.*

---

## 🛡️ Operational Defense & Governance
* **NIST CSF 2.0:** PR.IP-1 (Baseline Configuration Maintenance), PR.AC-5 (Network Segmentation), ID.RA-1 (IaC Vulnerability Identification)[cite: 1]
* **CIS Controls v8:** Control 4 (Secure Configuration of Enterprise Assets), Control 12 (Network Infrastructure Management)[cite: 1]
* **Teardown Protocol:** The entire architecture is 100% ephemeral and disposable, ready for instantaneous de-provisioning via `terraform destroy -auto-approve` to enforce fiscal discipline and eliminate attack surface persistence post-operation[cite: 1, 2, 3, 7].
