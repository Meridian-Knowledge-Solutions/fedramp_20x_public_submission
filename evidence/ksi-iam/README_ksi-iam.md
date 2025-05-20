# KSI-IAM: Identity and Access Management

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service offering will protect user data, control access, and implement zero trust practices.

## ✅ Assertion
Identity and access controls enforce least privilege, phishing-resistant MFA, and secure federation using SAML for all users.

## 📘 Description
The system utilizes AWS IAM Identity Center (SSO) integrated with the Okta FedRAMP cell to manage all user authentication and authorization. Access is granted using IAM permission sets, scoped to specific roles and least-privilege policies. MFA is enforced across all accounts using TOTP-based second factors. Access paths and actions are logged through CloudTrail for traceability and oversight.

## 🔐 Mapped FedRAMP Controls
- **AC-2** – Account Management  
- **AC-3** – Access Enforcement  
- **AC-5** – Separation of Duties  
- **AC-6** – Least Privilege  
- **AC-14** – Permitted Actions Without Identification or Authentication  
- **AU-9** – Protection of Audit Information  
- **IA-2** – Identification and Authentication (Users)  
  - **IA-2(1), IA-2(2), IA-2(8), IA-2(12)** – MFA Depth Requirements  
- **IA-4** – Identifier Management  
- **IA-5** – Authenticator Management  
  - **IA-5(1)** – Password Complexity and Policy  
- **IA-6** – Authenticator Feedback  
- **IA-8** – Identification and Authentication (Non-Organizational Users)  
  - **IA-8(1), IA-8(2), IA-8(4)** – Requirements for external accounts  
- **IA-11** – Session Authenticity  
- **PS-2, PS-3, PS-4, PS-5, PS-7, PS-9** – Personnel Security (Access Tracking & Revocation)

## 📂 Evidence Files
- `mfa_enforcement.png`
- `password_policy_nist_800_63b.pdf`
- `saml.png`
- `permission_sets.pdf`
- `ssm_session_manager_policy.png`
- `ssm_instance_role.png`

## 🧪 Validation Method
Validation is performed through direct inspection of Okta authentication policies, user audit logs, and AWS IAM role configurations. Terraform plan output confirms permission boundaries are tightly scoped, and AWS SCPs are in place to enforce guardrails across accounts.

## 🛠️ Source Configuration
- Terraform module: `terraform/modules/iam/*.tf`
- Commit: `9f8a7b6c` *(replace with actual)*

## ⏱️ Last Validated
2025-05-07T14:30:00Z

## ⚠️ Failure Condition
A failed state occurs if:
- MFA is not enforced for any active user account,
- Password complexity policies are missing or misaligned with NIST 800-63B,
- IAM permission sets grant unnecessary administrative privileges,
- IAM roles are misconfigured or SCPs are bypassed,
- SAML federation is not consistently enforced.
