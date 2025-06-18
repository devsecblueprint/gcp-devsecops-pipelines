variable "region" {
  type        = string
  description = "Region"
  default     = "us-central1"
}

# Terraform Environment Variables
variable "SNYK_TOKEN" {}
variable "PROJECT_ID" {}
