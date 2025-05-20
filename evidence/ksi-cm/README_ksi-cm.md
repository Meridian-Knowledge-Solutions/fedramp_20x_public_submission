# KSI-CM: Configuration Management

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service provider will ensure that all system changes are properly documented and configuration baselines are updated accordingly.

## ✅ Assertion
Configuration changes are centrally managed through version-controlled infrastructure, reviewed for risk, and deployed through automated CI/CD pipelines.

## 📘 Description
All system configurations are defined in code using Terraform and managed in a Git repository with enforced approval workflows. Changes are reviewed through formal change control processes, logged via Jira tickets, and discussed during weekly IT operations meetings. Immutable infrastructure ensures that all changes are deployed cleanly and auditable. AWS Config and CloudTrail provide continuous monitoring and logging of changes.

## 🔐 Mapped FedRAMP Controls
- CM-2 (Baseline Configuration)
- CM-3 (Configuration Change Control)
- CM-4 (Security Impact Analysis)
- CM-5 (Access Restrictions for Change)
- CM-6 (Configuration Settings)
- CM-8 (Information System Component Inventory)
- RA-5 (Vulnerability Scanning)

## 📂 Evidence Files
- `cloud_trial.png`
- `immutable_infrastructure_pipeline_terraform.pdf`
- `ci_cd_pipeline_testing_steps.pdf`
- `configuration_management_plan.pdf`
- `configuration_management_policy_and_procedures.pdf`
- `example_it_ops_ticket.png`
- `weekly_change_management_meeting_final.png`
- `terraform_plan_output.txt`

## 🧪 Validation Method
All infrastructure changes are implemented via Terraform pull requests. Changes are reviewed, scanned, and automatically tested before deployment. Jira tracks the change lifecycle and approval. AWS Config and CloudTrail logs confirm execution, timeline, and associated account actions.

## 🛠️ Source Configuration
- Terraform module: `terraform/modules/deployment/*.tf`
- Commit: `bc8f71da` *(replace with actual)*

## ⏱️ Last Validated
2025-05-07T14:30:00Z

## ⚠️ Failure Condition
A failure state occurs if:
- Configuration changes are made outside version control,
- Changes are not approved or tracked in Jira,
- Weekly change board reviews are bypassed,
- AWS Config or CloudTrail do not capture expected logs.
