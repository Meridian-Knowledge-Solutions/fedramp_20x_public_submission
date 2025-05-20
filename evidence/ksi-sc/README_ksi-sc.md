# KSI-SC: Service Configuration

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service offering will enforce the use of approved cryptography, continuously verify component integrity, and restrict access to external services.

## ✅ Assertion
All service configurations are securely managed, encrypted, and centrally controlled with continuous validation.

## 📘 Description
The system enforces secure configuration through AWS-native services such as AWS Config, KMS, and centralized Terraform modules. All traffic is encrypted in transit and at rest, and key rotation policies are implemented using AWS KMS. Infrastructure is immutable and changes are managed through version-controlled deployments with patch strategies enforced via IaC.

## 🔐 Mapped FedRAMP Controls
- SC-12 (Cryptographic Key Establishment)
- SC-13 (Cryptographic Protection)
- SC-28 (Protection of Information at Rest)
- CM-2 (Baseline Configuration)
- CM-6 (Configuration Settings)
- AC-17 (Remote Access)

## 📂 Evidence Files
- `aws_config.pdf`
- `https_tls_encryption_all_endpoints.pdf`
- `encryption_at_rest.pdf`
- `centralized_configuration_management_aggregator.png`
- `planned_implementation_AMI.pdf`
- `kms_encryption.png`
- `patch_management_strategy.pdf`

## 🧪 Validation Method
Configuration is evaluated via AWS Config compliance rules and Terraform plan outputs. TLS 1.2+ is enforced on all endpoints. At-rest encryption is validated using AWS KMS policies and volume settings. Patch policies are defined and deployed through Terraform with lifecycle controls and audit logging.

## 🛠️ Source Configuration
- Terraform module: `terraform/modules/security/*.tf`
- Commit: `4d5e6f7g` *(replace with actual)*

## ⏱️ Last Validated
2025-05-07T14:30:00Z

## ⚠️ Failure Condition
A failed state occurs if:
- TLS protocols below 1.2 are allowed on any endpoint,
- AWS Config detects configuration drift or noncompliance with encryption settings,
- Key rotation policies exceed the defined maximum timeframe,
- At-rest encryption is disabled or misconfigured.