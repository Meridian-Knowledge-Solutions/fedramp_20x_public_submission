# KSI-3IR: Third Party Information Resources

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service offering will monitor the software supply chain, manage third-party dependencies, and reduce reliance on third parties wherever possible.

## ✅ Assertion
The system manages supply chain risks by limiting third-party service use, ensuring FedRAMP authorization where applicable, and verifying vendor attestations, SBOMs, and boundary-level segmentation — even if services are not yet deployed in production.

## 📘 Description
The LMS platform is designed to operate entirely within AWS infrastructure. In Low Mode, the only declared third-party dependency is Elastic Cloud, which is **not currently deployed**, but may be used exclusively to support metadata-only indexing (e.g., course titles, tags) if production is triggered (e.g., under Li-SaaS or a customer onboarding event).

This integration is documented and scoped under AC-20, CA-3, and SA-9. No PII, PHI, audit logs, or sensitive content are transmitted. Outbound access to Elastic would be controlled via Security Groups and NAT Gateway, and all data flow paths are represented in diagrams and Terraform modules.

A forward-declared SBOM is provided to demonstrate awareness of expected SDKs (`@elastic/elasticsearch`, `elastic-apm-node`) that would be used if the integration is activated. Vendor attestation has been captured and the FedRAMP Moderate status of Elastic Cloud is verified.

## 🔐 Mapped FedRAMP Controls
- AC-2 – Account Management  
- AC-20 – Use of External Information Systems  
- AC-23 – Data Flow Enforcement  
- CA-3 – System Interconnections  
- CA-9 – Internal System Connections  
- RA-3(1) – Supply Chain Risk Analysis  
- SA-4 – Acquisition Process  
- SA-9 – External System Services  
- SA-12 – Supply Chain Protection  
- SA-13 – Software Usage Restrictions  
- SA-22 – Unsupported System Components  
- SI-5 – Security Alerts, Advisories, and Directives  
- SR-2 – Supply Chain Risk Management Strategy  
- SR-2(1) – Supply Chain Risk Management Plan  
- SR-3 – Supply Chain Risk Management Plan  
- SR-5 – Third Party Notification  
- SR-6 – Component Authenticity  
- SR-8 – Notification of Supply Chain Events  
- SR-10 – Inspection of Supply Chain Elements  
- SR-11 – Component Testing  
- SR-11(2) – Independent Verification of Supplier Claims

## 📂 Evidence Files
- `ssp_ac20_elastic_cloud_excerpt.pdf`  
- `system_boundary_with_elastic.pdf`  
- `data_flow_elastic_metadata.pdf`  
- `terraform_interconnection_controls.png`  
- `fedramp_moderate_vendor_list.xlsx`  
- `sbom_including_elastic.json`  
- `elastic_attestation.pdf`

## 🧪 Validation Method
Third-party risk validation is conducted through:
- Documentation of Elastic Cloud’s restricted scope and integration intent
- FedRAMP authorization verification for Elastic Cloud
- Architectural segmentation in network diagrams and Terraform
- Conditional SBOM generation for future production readiness
- Vendor attestation demonstrating secure development practices
- Designated monitoring tools (GuardDuty, CloudTrail) to be enabled if integration is activated

## 🛠️ Source Configuration
- Terraform module: `terraform/modules/networking/*.tf`
- Commit: `a83dcf29` (replace with actual)

## ⏱️ Last Validated
2025-05-08T00:00:00Z

## ⚠️ Failure Condition
A failed state occurs if:
- Any non-FedRAMP third-party service is used to store or process federal data
- Elastic Cloud is enabled without scope enforcement or monitoring
- SBOMs and attestations are missing for integrated components
- The use of third parties is undocumented or architecturally unsegmented
