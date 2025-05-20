# FedRAMP 20x Machine-Readable Submission Package (Public)

This repository contains Meridian LMS’s structured submission for the **FedRAMP 20x Phase One Pilot**, aligned with RFC-0006. It includes:

- All 10 **Key Security Indicators (KSIs)**
- Machine-readable validations aligned to **NIST 800-53 Rev. 5**
- Git-tracked, evidence-backed attestations
- Optional automation metadata for **Phase Two readiness**

---

## 🔗 Live Trust Dashboard

A live, interactive dashboard showcasing all KSI validations is available here:

➡️ **[FedRAMP 20x Trust Dashboard](https://meridian-knowledge-solutions.github.io/fedramp_low-20x-pilot/)**

This dashboard is:
- ✅ Automatically updated on every commit
- 📂 Linked directly to the `fedramp20x_submission.json`
- 🔎 Designed for transparency, audit readiness, and continuous trust reporting

---

## 📁 Repository Structure

```
.
├── fedramp20x_submission.json         # Main machine-readable submission (Phase One)
├── evidence/                          # Phase One supporting materials (structure only)
│   └── ksi-[code]/                    # KSI folders (no artifacts)
│       └── README_ksi-[code].md       # Describes what evidence would exist
│       └── *.json                     # Optional metadata
├── evidence_commit_metadata.json      # Git metadata for each referenced evidence file
├── dashboard/
│   └── index.html                     # Public dashboard UI
└── README.md
```

---

## 📄 Submission JSON Format

This submission is defined in `fedramp20x_submission.json`, using the Phase One format:

```json
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
```

### 🔍 Key Fields

| Field               | Description                                           |
|--------------------|-------------------------------------------------------|
| `ksi_id`           | Unique identifier for the Key Security Indicator      |
| `title`            | Human-readable KSI title                              |
| `description`      | What is being validated                               |
| `assertion`        | `true` or `false` based on supporting evidence        |
| `evidence_reference` | File path to supporting file under `evidence/`       |
| `continuous_reporting` | Boolean flag for Phase Two automation eligibility |

---

## 🛠️ Evidence and Automation Strategy

This public package includes **folder structures and metadata only**. Full evidence files are excluded to protect security posture. However, this repo is fully aligned with:

- 📁 `evidence/ksi-[code]/` structure with metadata in place
- 🧾 `evidence_commit_metadata.json` generated via Git to show commit SHA and timestamp
- 🧪 `validation_results[]` reflecting audit-ready truth values
- 🔄 Continuous monitoring eligibility via `continuous_reporting: true` flags

---

## 🚀 Phase Two Readiness: Automation by Design

As we progress toward **Phase Two**, this package is designed to be fully automatable via:

- **Terraform** infrastructure-as-code output
- **AWS-native CLI evidence** (e.g., Security Hub, Inspector, Config)
- **Jira + JSON integration** for MTTD/MTTR and ticket validation
- **GitHub Actions** for continuous evidence snapshotting

### Future Enhancements Include:

- `validation_timestamp` (evidence scan time)
- `validation_method` (IaC scan, log audit, manual review)
- `evidence_type` (PDF, CLI output, diagram)
- `service_dependencies` (e.g., IAM, Config, GuardDuty)

These are already supported by our schema and tooling.

---

## 🗂️ `evidence_v2/` and Phase Two Readiness

We’ve included a parallel structure under `evidence_v2/` to support **Phase Two and beyond**. This includes separation of:

- `static/`: Human-readable artifacts (PDFs, screenshots)
- `live/`: CLI outputs, logs, continuous validation evidence (e.g., tfsec, Inspector, AWS Config)

This future-facing format anticipates FedRAMP’s continuous monitoring objectives.

---

---

## ✅ Scope and KSI Coverage

This submission includes **all 10 KSIs** required for the FedRAMP 20x pilot:

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

## ⚠️ Transparency and Risk Considerations

This repo follows FedRAMP guidance for **public participation in 20x**:

> “FedRAMP will prioritize public package submissions for the 20x pilot effort… Cybersecurity is a public good that is strongest when the public is given the ability to contribute.” — Pete, FedRAMP PMO

> Per CISA BOD 20-01, our goal is to enhance continuous validation via public innovation without exposing sensitive configurations or operational detail.

---

## 🧪 For Auditors

Each validation in this repo is:

- ✅ Asserted true/false using Git-tracked evidence references
- 🧩 Mapped to commit SHA + timestamp (via evidence_commit_metadata.json)
- 🔎 Linked to supporting KSI metadata and NIST mappings
- 📊 Displayed in our live dashboard for interactive review

---

## 📬 Contact

**Adam Burroughs**  
Meridian Knowledge Solutions  
📧 [aburroughs@meridianks.com](mailto:aburroughs@meridianks.com)

---

## 📚 Related Resources

- [RFC-0006 – KSI Machine-Readable Format](https://github.com/GSA/fedramp-automation/blob/main/RFC/RFC-0006.md)
- [FedRAMP 20x Pilot Program](https://www.fedramp.gov/fedramp-20x/)
- [44 U.S. Code § 3609 – FedRAMP Modernization Statute](https://www.law.cornell.edu/uscode/text/44/3609)

---

_This repo is maintained by Meridian LMS as part of its participation in the FedRAMP 20x pilot. No sensitive production data or operational evidence is included._
