# FedRAMP Low 20x Pilot: Meridian LMS

This repository contains Meridian Knowledge Solutions' official submission to the **FedRAMP 20x Phase One Pilot**, representing a modern, machine-readable authorization package for a Low-impact SaaS environment. It includes Key Security Indicator (KSI) validations, structured evidence, and automated compliance artifacts in alignment with emerging 20x guidance and the FedRAMP Authorization Act (44 USC § 3609).

## 🌐 Live Trust Dashboard (Public)
A live, interactive dashboard showcasing all KSI validations is available here:

🔗 **[https://meridian-knowledge-solutions.github.io/fedramp_low-20x-pilot/)**

This dashboard is:
- Automatically updated on every commit
- Linked directly to the KSI validation JSON
- Designed for transparency, audit readiness, and continuous trust reporting

---

# 📦 FedRAMP 20x Machine-Readable Submission Package

This repository contains a **structured evidence submission** for the **FedRAMP 20x Phase One Pilot**, aligned with [RFC-0006](https://github.com/GSA/fedramp-automation/blob/main/rfcs/rfc-0006.md). It includes **all 10 Key Security Indicators (KSIs)** and maps supporting evidence to clearly structured JSON declarations designed for auditability, traceability, and future automation.

---

## 📁 Directory Structure

```
.
├── machine_readable_package.json
├── evidence/
│   └── ksi-[code]/
│       └── static/   # PDFs, screenshots, diagrams, policies
├── evidence_v2/ (optional, Phase Two)
│   └── ksi-[code]/
│       ├── static/   # Human-readable documentation
│       └── live/     # CLI/API/automated scan outputs
├── metadata/
│   └── ksi-[code]_metadata.json
└── README_phase2.md (optional)
```

- `evidence/`: Primary evidence folder for **Phase One**
- `machine_readable_package.json`: JSON schema defining KSI validations
- `metadata/`: Supplemental metadata for each KSI (description, controls, validation method)
- `evidence_v2/`: Optional structure for Phase Two readiness

---

## 📄 `machine_readable_package.json`

This file defines the core validations for each KSI. Each entry follows this schema:

```json
{
  "ksi_validations": [
    {
      "ksi_id": "KSI-CNA",
      "title": "Cloud Native Architecture",
      "validation_results": [
        {
          "description": "Have Denial of Service (DoS) protection implemented for all services.",
          "assertion": "true",
          "evidence_reference": "evidence/ksi-cna/aws_shield_dos_protection.pdf"
        }
      ],
      "continuous_reporting": true
    }
  ]
}
```

### 🔍 Key Fields

| Field | Description |
|-------|-------------|
| `ksi_id` | Unique identifier for the Key Security Indicator |
| `title` | Human-readable title of the KSI |
| `validation_results[]` | Array of assertions supporting each KSI |
| `description` | Narrative of what is being validated |
| `assertion` | Boolean value `"true"` or `"false"` |
| `evidence_reference` | File path to supporting artifact |
| `continuous_reporting` | Optional flag for automated validations |

---

## 📝 Submission Rationale

This package meets the Phase One submission requirements by:

- Addressing **all 10 Key Security Indicators (KSIs)**  
- Providing **NIST control-aligned validations** for FedRAMP Low
- Using a **machine-readable JSON format** that is traceable and auditable
- Including static evidence via Git-tracked files (PDFs, screenshots, policies)

Although optional fields such as `validation_method`, `evidence_type`, and `service_dependencies` are not required for Phase One, they are **included** to support FedRAMP’s automation goals and 44 U.S.C. § 3609 modernization guidance.

---

## 📘 Extended Field Support (Optional but Included)

| Field | Purpose |
|-------|---------|
| `validation_timestamp` | Time validation occurred (for audit trail) |
| `validation_method` | How the validation was confirmed (e.g., Terraform plan, log export) |
| `evidence_type` | Type of evidence (e.g., PDF, CLI output, diagram) |
| `service_dependencies` | AWS services used (e.g., GuardDuty, WAF, IAM Identity Center) |

These fields are actively used throughout the `machine_readable_package.json` and `metadata` directory and provide full traceability for each assertion.

---

## 🗂️ `evidence_v2/` and Phase Two Readiness

We’ve included a parallel structure under `evidence_v2/` to support **Phase Two and beyond**. This includes separation of:

- `static/`: Human-readable artifacts (PDFs, screenshots)
- `live/`: CLI outputs, logs, continuous validation evidence (e.g., tfsec, Inspector, AWS Config)

This future-facing format anticipates FedRAMP’s continuous monitoring objectives and is documented further in `README_phase2.md`.

---

## 🛠️ Controls and KSIs Mapped

This package addresses **over 100 individual FedRAMP Rev. 5 controls**, mapped to the following 10 KSIs:

- **KSI-CNA**: Cloud Native Architecture  
- **KSI-SC**: Service Configuration  
- **KSI-IAM**: Identity and Access Management  
- **KSI-MLA**: Monitoring, Logging, and Auditing  
- **KSI-CM**: Change Management  
- **KSI-PI**: Policy and Inventory  
- **KSI-3IR**: Third Party Information Resources  
- **KSI-CE**: Cybersecurity Education  
- **KSI-IR**: Incident Response

Each KSI is supported by:
- A JSON `validation_results[]` array
- A `metadata/` companion file describing its scope and mapped controls
- A folder of supporting evidence under `evidence/ksi-[code]/`

---

## 🧪 Evidence Source Summary

Our package leverages:
- AWS-native services: **IAM, Config, Shield, WAF, GuardDuty, CloudTrail, Backup**
- Terraform infrastructure-as-code
- Internal policy and training systems
- Jira for incident tracking and MTTD/MTTR measurement

---

## ⚠️ Audit-Focused Design

This submission was designed for **Fortreum’s audit process**, including:
- Clear **true/false state assertions** for each KSI
- Forward-declared **failure conditions**
- Optional validation of automated refresh potential (e.g., `continuous_reporting`)
- Forward compatibility with future **FedRAMP 20x authorization lifecycle automation**

---

## 📬 Questions?

**Primary Contact**  
Adam Burroughs  
📧 aburroughs@meridianks.com
---

