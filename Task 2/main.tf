provider "google" {
  project = "devops-task-430009"
  region  = "us-central1"
}

module "infrastructure" {
  source = "./terraform-module"  # Path to your module directory

  vpc_cidr               = "10.0.0.0/16"
  subnet_cidrs           = ["10.0.1.0/24", "10.0.2.0/24"]
  cloud_run_service_name = "example-service"
  cloud_run_image        = "us-docker.pkg.dev/cloudrun/container/hello"
  cloud_run_memory       = "512Mi"
  project_id             = "devops-task-430009"
  region                 = "us-central1"
}

output "vpc_network" {
  value = module.infrastructure.vpc_network
}

output "subnets" {
  value = module.infrastructure.subnets
}

output "cloud_run_url" {
  value = module.infrastructure.cloud_run_url
}
