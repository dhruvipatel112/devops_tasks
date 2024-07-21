
module "infra_module" {
  source = "./terraform-infra-module"

  project_id    = "devops-task-430009"
  region        = "us-central1"
  vpc_name      = "my-vpc"
  subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  service_name  = "my-cloud-run-service"
  service_image = "us-docker.pkg.dev/cloudrun/container/hello"
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
