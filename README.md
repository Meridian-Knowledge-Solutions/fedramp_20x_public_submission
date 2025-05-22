# FedRAMP 20x Machine-Readable Submission Package (Public)

This repository contains Meridian LMS’s structured submission for the **FedRAMP 20x Phase One Pilot**, aligned with [RFC-0006](https://github.com/GSA/fedramp-automation/blob/main/RFC/RFC-0006.md). It includes:

- All 9 **Key Security Indicators (KSIs)**
- Machine-readable validations aligned to **NIST 800-53 Rev. 5**
- Git-tracked, commit-backed evidence assertions
- Automation metadata supporting **Phase Two readiness**

---

## 🔗 Live Trust Dashboard

📍 **[FedRAMP 20x Trust Dashboard](https://meridian-knowledge-solutions.github.io/fedramp_20x_public_submission/)**

This dashboard is:
- ✅ Automatically updated when `fedramp20x_submission.json` or private evidence artifacts are modified
- 🔄 Pulls from `fedramp20x_submission.json` and `evidence_commit_metadata.json`
- 🔍 Differentiates between CLI-based and static evidence
- 🔒 Static evidence is restricted with a lock icon and tooltip
- 📨 Missing or restricted evidence can be clarified via a **Request Access** GitHub issue link
- 🧭 Shows SHA and timestamp per artifact for trust traceability

---

### ⚙️ How It Works

This dashboard reflects a real-time view of Meridian’s compliance posture. It is powered by:

- **GitHub Actions** in our private repo, which:
  - Monitor changes to both evidence (`evidence/`, `evidence_v2/`) and the submission file
  - Generate `evidence_commit_metadata.json` using Git commit history (SHA + timestamp)
  - Push this metadata to the public repo on every update

- **Client-side JavaScript**, which:
  - Loads `fedramp20x_submission.json` and `evidence_commit_metadata.json`
  - Displays KSI assertions with supporting evidence links
  - Visually distinguishes between static and CLI-based evidence
  - Renders lock indicators with tooltip and access request links for restricted artifacts
  - Highlights SHA and commit time for trust and audit traceability
 
### 📈 Enhanced Transparency Features

The dashboard includes advanced validation metadata to improve audit clarity:

- 🔹 **Evidence Trace** column displays:
  - Git commit SHA
  - UTC timestamp of evidence validation
  - Local timestamp auto-adjusted to the viewer's timezone
- 🔍 **Validation Method Tooltips** show how each assertion was verified (e.g., CLI, Terraform, manual review)
- 🎛 **KSI Filter Dropdown** allows reviewers to focus on specific KSI families
- 📊 **Summary Banner** displays total, passed, failed, and restricted validations
- 🔒 Static artifacts include "Evidence restricted" status with a **Request Access** link

These enhancements reinforce the submission's goals of **public transparency, traceable compliance, and reviewer-friendly usability**.

---

This system provides a transparent, integrity-preserving view of Meridian’s evidence posture — even while all raw artifacts remain protected in our private systems.

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

While artifacts are not included in this public repository, we provide:

- 🔒 Git-tracked commit hashes and timestamps for all evidence references
- 🧭 Public display of SHA, UTC, and local time directly in the dashboard
- 📁 Clean separation between static (`evidence/`) and CLI (`evidence_v2/`) evidence types
- 🧪 Machine-generated metadata to validate evidence freshness and traceability

This enables audit-ready assertion confidence and continuous validation posture **without exposing sensitive files or implementation details**.

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

## ✨ New Enhancements for Phase Two Transparency

### 🧠 Auto-Failing Assertions for Missing Evidence
If a referenced evidence file does not exist or has no commit metadata, our system:
- Automatically sets `"assertion": "false"`
- Adds a `"validation_method": "Missing evidence - auto-failed"` tag
- Keeps the submission.json accurate and trustworthy at all times

### 🛠 Public Feedback Loop via GitHub Issues
If an assertion fails and no evidence is present:
- The dashboard replaces the "View" link with a **“Request Clarification”** link
- This link pre-fills a GitHub issue template so 3PAOs or reviewers can raise questions or concerns
- Enables continuous public participation in the authorization process — a FedRAMP 20x first

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

---

## ⚠️ Transparency and Risk Disclosure

> **This repository is public** per FedRAMP 20x guidance and CISA BOD 20-01.

- ✅ No sensitive evidence is publicly exposed
- ✅ Evidence commit metadata proves truth and traceability
- ✅ Internal artifacts are secured in a private repo, reviewed by 3PAO
- ✅ All automation outputs shown here were generated within Meridian LMS AWS Commercial (east) environments

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
