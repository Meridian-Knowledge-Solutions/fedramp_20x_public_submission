# KSI-MLA: Monitoring, Logging, and Auditing

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service offering will monitor, log, and audit all important events, activity, and changes.

## ✅ Assertion
All security-relevant events and changes are monitored, logged centrally, and reviewed to detect anomalies or unauthorized activity in near real time.

## 📘 Description
The system implements centralized logging and monitoring using AWS CloudTrail for API activity, GuardDuty for threat detection, and AWS Config for runtime compliance monitoring. CloudWatch and SNS are configured for alerting. Logs are reviewed regularly as part of the audit process, and findings are documented in audit reports. Vulnerabilities and misconfigurations are tracked in Jira with structured remediation timelines.

Vulnerability scanning is performed using AWS Inspector, which continuously analyzes EC2 instances and other components for known CVEs using authenticated, SSM-based scanning. Inspector findings are reviewed through the AWS console and exported for documentation and remediation.

Infrastructure-as-Code (IaC) configurations are scanned automatically during deployment using Terraform static analysis tools (e.g., tfsec) and validated against AWS Config rules post-deployment. This dual approach ensures both code-level and runtime misconfiguration detection aligned with FedRAMP expectations.


## 🔐 Mapped FedRAMP Controls
- **AU-2** – Audit Events  
- **AU-3** – Content of Audit Records  
- **AU-4** – Audit Storage Capacity  
- **AU-6** – Audit Review, Analysis, and Reporting  
- **AU-8** – Time Stamps  
- **AU-11** – Audit Record Retention  
- **AU-12** – Audit Generation  
- **SI-2** – Flaw Remediation  
- **RA-5** – Vulnerability Scanning  
  - **RA-5(2), RA-5(11)** – Authenticated and frequent scanning  
- **CM-2** – Baseline Configuration  
- **CM-3** – Configuration Change Control  
- **CM-6** – Configuration Settings  

## 📂 Evidence Files
- `cloud_trial.png`
- `guard_duty.png`
- `sns_notifications.png`
- `audit_log_review.pdf`
- `vulnerability_management_process_final.pdf`
- `stack_sets_cloudformation.png`
- `jira_fedramp_project.png`
- `inspector_node_running.png`
- `inspector_EC2.png`
- `stack_sets_cloudformation.png`
- `terraform_plan_output.txt`

## 🧪 Validation Method
Logging and detection capabilities are validated via AWS service dashboards and configuration exports. GuardDuty and CloudTrail outputs are reviewed to confirm anomaly detection and API activity tracking. SNS topic configurations demonstrate forwarding of critical alerts to response teams.

Vulnerability detection is validated through AWS Inspector findings, which are generated via authenticated, SSM-based scans of EC2 instances. These findings are reviewed in the AWS console and exported as part of the evidence set.

Jira is used to document and track remediation actions and timeframes for all identified findings. Audit log review procedures are documented and evidenced through exported logs, CloudTrail entries, and Jira tickets.

## 🛠️ Source Configuration
- Terraform module: `terraform/modules/logging/*.tf`
- Commit: `5c7d8e9a` *(replace with actual)*

## ⏱️ Last Validated
2025-05-07T14:30:00Z

## ⚠️ Failure Condition
A failed state occurs if:
- AWS CloudTrail or GuardDuty is disabled or missing expected log events,
- Vulnerability findings are not reviewed or tracked in Jira,
- AWS Inspector is not running, or vulnerability findings are not generated or reviewed,
- Jira tickets are not created or updated in response to identified vulnerabilities or misconfigurations,
- Audit logs are not reviewed on a scheduled basis,
- Configuration drift is not detected or addressed.
