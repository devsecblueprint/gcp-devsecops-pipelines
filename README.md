# GCP DevSecOps Pipeline

![License](https://img.shields.io/github/license/devsecblueprint/gcp-devsecops-pipeline?logo=license&style=for-the-badge)
![Terraform Cloud](https://img.shields.io/badge/Terraform-Registry-purple?logo=terraform&style=for-the-badge)
![GitHub Issues](https://img.shields.io/github/issues/devsecblueprint/gcp-devsecops-pipeline?logo=github&style=for-the-badge)
![GitHub Forks](https://img.shields.io/github/forks/devsecblueprint/gcp-devsecops-pipeline?logo=github&style=for-the-badge)
![GitHub Stars](https://img.shields.io/github/stars/devsecblueprint/gcp-devsecops-pipeline?logo=github&style=for-the-badge)
![GitHub Last Commit](https://img.shields.io/github/last-commit/devsecblueprint/gcp-devsecops-pipeline?logo=github&style=for-the-badge)
![CI Status](https://github.com/devsecblueprint/gcp-devsecops-pipeline/actions/workflows/default.yml/badge.svg?style=for-the-badge)

This project provides an opinionated DevSecOps pipeline for Google Cloud Platform (GCP), built with Terraform and GitHub Actions. It integrates security best practices into the software development lifecycle to ensure secure, automated infrastructure deployments.

## 🧱 Project Structure

```text
gcp-devsecops-pipeline/
├── .github/workflows/             # CI/CD pipelines using GitHub Actions
│   ├── default.yml                # Default pipeline for miscellaneous jobs
│   ├── terraform-apply.yml        # Runs Terraform apply operations
│   └── terraform-linter.yml       # Lints Terraform code for best practices
├── assets/                        # Diagrams and visual assets
│   └── infra_architecture.drawio.svg
├── terraform/                     # Main Terraform configuration for GCP
│   ├── data.tf
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   └── modules/
│       └── pipelines/             # Reusable Terraform modules
│           ├── main.tf
│           └── variable.tf
├── LICENSE                        # Project license
├── .gitignore                     # Git ignored files
└── README.md                      # Project documentation
```

## 🚀 Features

- **Infrastructure as Code (IaC):** Uses Terraform to define and manage infrastructure in GCP.
- **Modular Design:** Core infrastructure and pipeline logic are separated into reusable modules.
- **Security-first Pipelines:** GitHub Actions workflows include a Terraform linter and secure deployment workflow.
- **Visual Architecture Diagram:** A visual reference of the infrastructure is provided under `assets/`.

## ⚙️ Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/<your-org>/gcp-devsecops-pipeline.git
   cd gcp-devsecops-pipeline
   ```

2. **Initialize and apply Terraform**

   ```bash
   cd terraform
   terraform init
   terraform plan
   terraform apply
   ```

3. **Review GitHub Workflows**

   - Customize `.github/workflows/terraform-apply.yml` and `.github/workflows/terraform-linter.yml` as needed for your environment.

## 📌 Prerequisites

- [Terraform CLI](https://developer.hashicorp.com/terraform)
- A configured [GCP Service Account](https://cloud.google.com/iam/docs/service-accounts) with the appropriate roles
- [GitHub Actions](https://docs.github.com/en/actions) configured for secret management and automation

## 🛡️ Security Considerations

- Secrets must be stored securely using GitHub repository secrets.
- Terraform linting helps enforce security standards pre-deployment.
- Diagrams and modularization promote clarity and maintainability in infrastructure design.

## 📄 License

This project is licensed under the terms of the [LICENSE](./LICENSE) file.
