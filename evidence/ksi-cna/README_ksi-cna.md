# KSI-CNA: Cloud Native Architecture

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service offering will use cloud-native architecture and design principles to enforce and enhance the Confidentiality, Integrity and Availability of the system.

## ✅ Assertion
The system uses a cloud-native architecture to isolate components, enforce traffic control, and minimize attack surface through zero trust design.

## 📘 Description
The system is built on immutable, Terraform-managed infrastructure using AWS-native services to enforce strict segmentation, minimize exposure, and maintain configuration integrity. Components are isolated through scoped IAM roles, dedicated VPCs, and NACLs. Public-facing access is tightly controlled via AWS WAF and security groups. Compute resources operate without persistent state or credentials, using session-based administrative access through AWS SSM. This architecture reduces lateral movement risk and configuration drift while aligning with zero trust principles.

## 🔐 Mapped FedRAMP Controls
- AC-3
- AC-4
- SC-7
- SC-12
- SA-11
- CM-2
- CM-6

## 📂 Evidence Files
- `aws_shield_dos_protection.pdf`
- `nacl_outbound_rules.png`
- `nacl_inbound_rules.png`
- `system_boundary_and_network_architecture.pdf`
- `data_flow_diagram.pdf`
- `permission_sets.pdf`
- `vpc_traffic_flow_enforcement.pdf`
- `security_hub.pdf`
- `network_diagram.pdf`
- `aws_waf_rule_set.png`
- `terraform_plan_output.txt`

## 🧪 Validation Method
Validated via Terraform plan outputs and AWS Config compliance checks for networking segmentation, role isolation, and firewall behavior. Architecture diagrams reviewed manually.

## 🛠️ Source Configuration
- Terraform module: `terraform/modules/networking/*.tf`
- Commit: `1a2b3c4d`

## ⏱️ Last Validated
2025-05-07T14:30:00Z

## ⚠️ Failure Condition
If a VPC subnet allows 0.0.0.0/0 without AWS Network Firewall enforcement, or if IAM permission sets are overly permissive. Failure may also be triggered if outbound access to non-AWS services is permitted.
