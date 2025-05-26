terraform {
  cloud {
    organization = "DSB"

    workspaces {
      name = "gcp-devsecops-pipelines"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}