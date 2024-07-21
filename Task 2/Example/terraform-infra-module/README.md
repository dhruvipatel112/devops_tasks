# Terraform Infrastructure Module

This module sets up a VPC, subnets, and a Cloud Run service on Google Cloud Platform.

## Usage

```hcl
module "infra_module" {
  source = "./path/to/your/module"

  project_id    = "your-project-id"
  region        = "us-central1"
  vpc_name      = "my-vpc"
  subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  service_name  = "my-cloud-run-service"
  service_image = "gcr.io/my-project/my-image:latest"
  memory_limit  = "256Mi"
}

output "vpc_network_id" {
  value = module.infra_module.vpc_network_id
}

output "subnet_ids" {
  value = module.infra_module.subnet_ids
}

output "cloud_run_service_url" {
  value = module.infra_module.cloud_run_service_url
}

```




