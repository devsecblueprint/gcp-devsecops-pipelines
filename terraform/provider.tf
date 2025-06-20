terraform {
  cloud {
    organization = "DSB"

    workspaces {
      name = "gcp-devsecops-pipeline"
    }
  }
}

provider "google" {
  project = var.PROJECT_ID
  region  = var.region
}
