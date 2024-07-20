# Terraform Module for VPC, Subnets, and Cloud Run

This module creates a VPC, subnets, and a Cloud Run service on Google Cloud Platform (GCP).

## Usage

```hcl
provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

module "infrastructure" {
  source = "./path-to-your-module"

  vpc_cidr               = "10.0.0.0/16"
  subnet_cidrs           = ["10.0.1.0/24", "10.0.2.0/24"]
  cloud_run_service_name = "example-service"
  cloud_run_image        = "gcr.io/your-project/your-image:latest"
  cloud_run_memory       = "512Mi"
  project_id             = "your-gcp-project-id"
  region                 = "us-central1"
}

output "vpc_network" {
  value = module.infrastructure.vpc_network
}

output "subnets" {
  value = module.infrastructure.subnets
}

output "cloud_run_url
