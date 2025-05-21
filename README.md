# FedRAMP 20x Machine-Readable Submission Package (Public)

This repository contains Meridian LMS’s structured submission for the **FedRAMP 20x Phase One Pilot**, aligned with [RFC-0006](https://github.com/GSA/fedramp-automation/blob/main/RFC/RFC-0006.md). It includes:

- All 10 **Key Security Indicators (KSIs)**
- Machine-readable validations aligned to **NIST 800-53 Rev. 5**
- Git-tracked, commit-backed evidence assertions
- Automation metadata supporting **Phase Two readiness**

---

## 🔗 Live Trust Dashboard

📍 **[FedRAMP 20x Trust Dashboard](https://meridian-knowledge-solutions.github.io/fedramp_20x_public_submission/)**

This dashboard is:
- ✅ Updated automatically on every commit to submission or evidence files
- 🔄 Pulls from `fedramp20x_submission.json` and `evidence_commit_metadata.json`
- 🔍 Differentiates between CLI-based and static evidence
- 🧭 Shows SHA and timestamp per artifact for trust traceability

---

## 📁 Repository Structure

```
.
├── fedramp20x_submission.json         # Main Phase One machine-readable validation package
├── evidence/                          # Static artifact structure (no files included)
│   └── ksi-[code]/                    # Phase One PDF/image-based evidence
├── evidence_v2/                       # Automation-ready CLI output (for Phase Two)
│   └── ksi-[code]/*.json              # Cleaned JSON outputs from Terraform, AWS CLI, etc.
├── evidence_commit_metadata.json      # Git metadata for all referenced artifacts
├── index.html                         # Public dashboard rendering KSI validation status
└── README.md
```

---

## ✅ Submission Format (Phase One Example)

```json
{
  "ksi_id": "KSI-CNA",
  "title": "Cloud Native Architecture",
  "validation_results": [
    {
      "description": "Use WAF to mitigate web application attacks.",
      "assertion": "true",
      "evidence_reference": "evidence_v2/ksi-cna/waf_acl.json",
      "evidence_type": "cli_output",
      "validation_method": "AWS CLI via GitHub Action",
      "validation_timestamp": "2025-05-20T00:00:00Z"
    }
  ],
  "continuous_reporting": true
}
```

### 🔍 Key Fields Explained

| Field                 | Description                                         |
|----------------------|-----------------------------------------------------|
| `ksi_id`             | Key Security Indicator ID                           |
| `assertion`          | Boolean validation of the requirement               |
| `evidence_reference` | Path to public or internal evidence (not included)  |
| `evidence_type`      | `static` or `cli_output`                            |
| `validation_method`  | Manual review, AWS CLI, Terraform, etc.             |
| `validation_timestamp` | ISO8601 datetime of last validation               |

---

## 🛠️ Evidence Strategy

While artifacts are **not included in this public repo**, we provide:
- 🔒 Git-tracked commit hashes and timestamps for all evidence paths
- 📁 Clean separation between static (`evidence/`) and CLI (`evidence_v2/`)
- 🧪 Evidence commit metadata to prove change traceability and recency

This enables audit-ready **assertion confidence** without exposing sensitive content or IP.

---

## 🚀 Phase Two Readiness (In Progress)

- ✅ GitHub Actions validate and extract CLI evidence for selected KSIs
- ✅ Evidence stored in KSI-based JSON files (e.g., `terraform_plan_output.json`)
- ✅ GitHub metadata pushed in real time to `evidence_commit_metadata.json`
- ✅ Dashboard dynamically reflects latest validation status

Future enhancements will expand:
- Terraform plan validation
- Inspector and Config compliance snapshots
- Automation coverage across additional KSIs

---

## ✅ KSI Coverage (Complete for Phase One)

| KSI ID     | Title                                |
|------------|--------------------------------------|
| KSI-CNA    | Cloud Native Architecture            |
| KSI-SC     | Service Configuration                |
| KSI-IAM    | Identity and Access Management       |
| KSI-MLA    | Monitoring, Logging, and Auditing    |
| KSI-CM     | Change Management                    |
| KSI-PI     | Policy and Inventory                 |
| KSI-3IR    | Third Party Information Resources    |
| KSI-CE     | Cybersecurity Education              |
| KSI-IR     | Incident Response                    |
| KSI-RA     | Risk Assessment                      |

---

## ⚠️ Transparency and Risk Disclosure

> **This repository is public** per FedRAMP 20x guidance and CISA BOD 20-01.

- ✅ No sensitive evidence is publicly exposed
- ✅ Evidence commit metadata proves truth and traceability
- ✅ Internal artifacts are secured in a private repo, reviewed by 3PAO
- ✅ All automation outputs shown here were generated within Meridian LMS AWS GovCloud environments

---

## 🧪 Auditor Notes

Each validation:
- Has an associated Git-tracked `evidence_reference`
- Can be traced via `evidence_commit_metadata.json`
- Is surfaced in a public dashboard for live inspection

We welcome constructive audit feedback to improve continuous validation processes.

---

## 📬 Contact

**Adam Burroughs**  
Meridian Knowledge Solutions  
📧 [aburroughs@meridianks.com](mailto:aburroughs@meridianks.com)
