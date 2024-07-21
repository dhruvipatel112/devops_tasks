# Create a New Terraform Module for Reusable Infrastructure Components

This module sets up a VPC, subnets, and a Cloud Run service on Google Cloud Platform (GCP).

```
|—— .terraform
|    |—— modules
|        |—— modules.json
|    |—— providers
|        |—— registry.terraform.io
|            |—— hashicorp
|                |—— google
|                    |—— 5.38.0
|                        |—— linux_amd64
|                            |—— LICENSE.txt
|                            |—— terraform-provider-google_v5.38.0_x5
|—— .terraform.lock.hcl
|—— README
|—— main.tf
|—— provider.tf
|—— terraform-module
|    |—— cloud_run
|        |—— main.tf
|    |—— compute
|        |—— main.tf
|    |—— network
|        |—— main.tf
|—— terraform.tfstate
|—— terraform.tfstate.backup
|—— terraform.tfvars
|—— variables.tf
```





```
|—— Example
|    |—— .terraform
|        |—— modules
|            |—— modules.json
|        |—— providers
|            |—— registry.terraform.io
|                |—— hashicorp
|                    |—— google
|                        |—— 5.38.0
|                            |—— linux_amd64
|                                |—— LICENSE.txt
|                                |—— terraform-provider-google_v5.38.0_x5
|    |—— .terraform.lock.hcl
|    |—— main.tf
|    |—— provider.tf
|    |—— terraform-infra-module
|        |—— README.md
|        |—— image.png
|        |—— main.tf
|        |—— outputs.tf
|        |—— variables.tf
|    |—— terraform.tfstate
|    |—— terraform.tfstate.backup
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


