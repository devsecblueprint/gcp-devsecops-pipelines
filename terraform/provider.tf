terraform {
  cloud {
    organization = "DSB"

    workspaces {
      name = "gcp-devsecops-pipeline"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}