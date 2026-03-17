# Enterprise Cloud Security Guardrails

## 📌 Project Overview
This project demonstrates how to implement **cloud security guardrails** using:
- Terraform (Infrastructure as Code)
- AWS services (S3, CloudWatch)
- GitHub Actions (CI/CD security pipeline)
- Policy-as-Code (OPA / Rego)

The goal is to enforce security best practices automatically in a cloud environment.

---

## 🏗️ Architecture
- Terraform provisions AWS resources
- S3 bucket is secured with policies
- CloudWatch logs monitor activity
- GitHub Actions runs security and Terraform checks

---

## 🔐 Features
- ✅ Secure S3 bucket configuration
- ✅ IAM least-privilege policies
- ✅ CloudWatch logging enabled
- ✅ Terraform validation pipeline
- ✅ Policy-as-Code with Rego

---

## ⚙️ Technologies Used
- Terraform
- AWS (S3, IAM, CloudWatch)
- GitHub Actions
- Open Policy Agent (OPA)

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/Fisayo24/enterprise-cloud-security-guardrails.git
cd enterprise-cloud-security-guardrails