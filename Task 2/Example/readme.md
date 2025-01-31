
# Terraform Infrastructure Module

This module sets up a VPC, subnets, and a Cloud Run service on Google Cloud Platform (GCP).

## Usage

To use this module, create a Terraform configuration file in a separate directory and call the module with the necessary inputs.

### Example Configuration

Create a directory for your Terraform configuration (e.g., `example`) and add the following `main.tf` file:

```hcl
provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

module "infra_module" {
  source = "../path/to/your/module"

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

###Initialize and Apply
Navigate to the directory containing your main.tf file (e.g., sample-usage).
Initialize the Terraform configuration:
```
bash

terraform init
Validate the configuration:
```
```
bash

terraform validate
Apply the configuration:
```
```
bash

terraform apply
Follow the prompts to confirm the application of the configuration.
```
| Name           | Description                                 | Type         | Default | Required |
|----------------|---------------------------------------------|--------------|---------|----------|
| project_id`    | Google Cloud Project ID                     | string       |         | yes      |
| region`        | Region to deploy resources                  | string       |         | yes      |
| `vpc_name`     | Name of the VPC                             | string       |         | yes      |
| subnet_cidrs`  | List of subnet CIDRs                        | list(string) |         | yes      |
| service_name`  | Name of the Cloud Run service               | string       |         | yes      |
| service_image` | Docker image for the Cloud Run service      | string       |         | yes      |
| `memory_limit` | Memory allocation for the Cloud Run service | string       | "256Mi" | no       |

| Name                | Description                           |
|---------------------|---------------------------------------|
| `vpc_network_id`    | ID of the created VPC network         |
| subnet_ids`         | IDs of the created subnets            |
| oud_run_service_url | URL of the deployed Cloud Run service |

```
Files
-main.tf: Defines the resources for the VPC, subnets, and Cloud Run service.
-variables.tf: Declares input variables for the module.
-outputs.tf: Defines output variables to expose useful information about the resources.
-README.md: Documentation on how to use the module.
```
