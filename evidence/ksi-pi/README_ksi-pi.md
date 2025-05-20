# KSI-PI: Policy and Inventory

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service offering will have intentional, organized, universal guidance for how every asset, including personnel, is secured.

## ✅ Assertion
Security policies, asset inventories, and governance practices are maintained to ensure consistent and traceable security operations across the system.

## 📘 Description
Asset inventories are automatically aggregated using AWS Config Aggregator and managed through infrastructure-as-code via Terraform. Security policies are authored, reviewed, and version-controlled using GitHub. The organization maintains a formal vulnerability disclosure program and embeds secure-by-design principles in the software development lifecycle (SDLC). Control effectiveness is continuously validated using automated mechanisms. A formal cybersecurity operations budget and staffing model is in place to support the system.

## 🔐 Mapped FedRAMP Controls
- **AC-1** – Access Control Policy and Procedures  
- **AU-1** – Audit and Accountability Policy and Procedures  
- **CA-1** – Security Assessment and Authorization Policies  
- **CM-1** – Configuration Management Policy and Procedures  
- **CM-8** – System Component Inventory  
- **CP-1** – Contingency Planning Policy and Procedures  
- **IA-1** – Identification and Authentication Policy and Procedures  
- **IR-1** – Incident Response Policy and Procedures  
- **PL-1** – Security Planning Policy and Procedures  
- **PL-2** – System Security Plan  
- **PL-4** – Rules of Behavior  
- **PL-8** – Information Security Architecture  
- **PS-1** – Personnel Security Policy and Procedures  
- **RA-1** – Risk Assessment Policy and Procedures  
- **RA-3** – Risk Assessment  
- **RA-5** – Vulnerability Scanning  
- **SA-1** – System and Services Acquisition Policy and Procedures  
- **SA-2** – Allocation of Resources  
- **SA-3** – System Development Life Cycle  
- **SA-5** – Information System Documentation  
- **SA-8** – Security Engineering Principles  
- **SC-1** – System and Communications Protection Policy and Procedures  
- **SI-1** – System and Information Integrity Policy and Procedures  
- **SR-1** – Supply Chain Risk Management Policy and Procedures

## 📂 Evidence Files
- `aws_config_aggregator_dashboard.png`
- `security_policy_collection_repository.zip`
- `vulnerability_disclosure_program.pdf`
- `sdlc_secure_by_design_document.pdf`
- `automated_control_validation_methods.pdf`
- `security_budget_allocation_and_roles.pdf`

## 🧪 Validation Method
Inventories are validated through AWS Config Aggregator dashboards. Policies and procedures are stored and versioned in GitHub. Disclosure programs and secure-by-design documentation are reviewed by compliance and engineering staff. Automated validation is verified via supporting tools and evidence of integration.

## 🛠️ Source Configuration
- Terraform module: `terraform/modules/inventory/*.tf`
- Commit: `da3f29bc` *(replace with actual)*

## ⏱️ Last Validated
2025-05-07T14:30:00Z

## ⚠️ Failure Condition
A failed state occurs if:
- Inventory is not dynamically maintained or AWS Config Aggregator is disabled,
- Policies are not reviewed regularly or lack version control,
- Disclosure programs are not documented or accessible,
- Secure-by-design practices are not reflected in SDLC artifacts.
