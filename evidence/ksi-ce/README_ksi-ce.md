# KSI-CE: Cybersecurity Education

## 🎯 Intent (from FedRAMP 20x)
A secure cloud service offering will ensure staff have awareness and training to help them recognize and report suspicious activity and securely operate the system.

## ✅ Assertion
All employees receive annual security training, and individuals in privileged roles complete additional role-specific cybersecurity education.

## 📘 Description
Meridian requires all employees to complete annual cybersecurity awareness training through the LMS. Training covers phishing, data handling, acceptable use, and insider threat awareness. Privileged users, such as system administrators, are assigned additional role-specific modules addressing access control, monitoring responsibilities, and incident escalation aligned to FedRAMP expectations. Training completion is tracked, and quarterly audits are performed to ensure compliance with training requirements.

## 🔐 Mapped FedRAMP Controls
- AT-1 (Security Awareness and Training Policy and Procedures)
- AT-2 (Security Awareness Training)
- AT-3 (Role-Based Security Training)
- AT-4 (Security Training Records)
- PL-4 (Rules of Behavior)

## 📂 Evidence Files
- `security_training_roster.png`
- `cyber_security_training.png`
- `fedramp_role_based.png`

## 🧪 Validation Method
Completion data is validated through:
- Internal LMS reports showing annual training status
- Training content documentation reflecting FedRAMP-relevant topics
- Separate logs for privileged user role-based training
Quarterly compliance reviews verify completion, and system access is contingent on training status.

## 🛠️ Source Configuration
- Internal system: `LMS training tracker`, `Privileged Role Training Matrix`
- Commit: `c4a7b92f` *(replace with actual if tracked in version control)*

## ⏱️ Last Validated
2025-05-07T14:30:00Z

## ⚠️ Failure Condition
A failed state occurs if:
- Annual training is not completed by all employees
- Privileged users do not complete role-specific training
- Training records are missing, or access controls do not enforce training completion requirements
