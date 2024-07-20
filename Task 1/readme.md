@Author: Dhruvi Vaishnav

# Task 1: Setup Cloud Run with Terraform

![Cloud Run](https://www.gstatic.com/images/branding/product/1x/cloudrun_512dp.png)

## Overview
This project provides Terraform configuration files to set up and deploy a Cloud Run service on Google Cloud Platform (GCP). 

## Prerequisites
1. **Google Cloud Account**: Ensure you have a GCP account.
2. **Google Cloud SDK**: Install the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install).
3. **Terraform**: Install [Terraform](https://www.terraform.io/downloads.html).

## Setup Instructions

### Step 1: Clone the Repository
First, clone the repository containing the Terraform configuration files to your local machine.

```sh
git clone https://github.com/your-repo/cloud-run-terraform.git
cd cloud-run-terraform
```

###Step 2: Initialize Terraform
Next, initialize Terraform in your project directory. This command will download and install the necessary providers.

```sh
terraform init
```
###Step 3: Configure GCP Authentication
Authenticate your Google Cloud SDK with the following command to ensure Terraform can interact with your GCP account.

```sh
gcloud auth application-default login
```

###Step 4: Define Variables
Edit the variables.tf file to set your project-specific values, such as your GCP project ID and region.

```
hcl
variable "project_id" {
  description = "Your GCP project ID"
  type        = string
  default     = "your-project-id"
}

variable "region" {
  description = "The GCP region to deploy your resources"
  type        = string
  default     = "us-central1"
}

```

###Step 5: Apply Terraform Configuration
Apply the Terraform configuration to deploy the Cloud Run service. This command will create the necessary infrastructure on GCP.

```
sh
terraform apply
Type yes when prompted to confirm the operation.
```
###Step 6: Verify Deployment
Once the deployment is complete, you can verify the Cloud Run service on the GCP Console or by running:

```
sh
gcloud run services list --platform managed
```
Terraform Configuration
main.tf
```
hcl

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_cloud_run_service" "default" {
  name     = "example-service"
  location = var.region

  template {
    spec {
      containers {
        image = "gcr.io/${var.project_id}/example-image"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
```
variables.tf
```
hcl
Copy code
variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}
```
outputs.tf
```
hcl

output "cloud_run_url" {
  description = "URL of the deployed Cloud Run service"
  value       = google_cloud_run_service.default.status[0].url
}
```

This project is accessible publically uisng this url :
```
https://cloudrun-service-kscvlag7ta-uc.a.run.app
```

![Screenshot from 2024-07-20 22-35-27](https://github.com/user-attachments/assets/0d07d04f-da79-4c11-af60-52491fc17af9)



