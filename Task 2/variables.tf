variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "cloud_run_service_name" {
  description = "The name of the Cloud Run service"
  type        = string
  default     = "example-service"
}

variable "cloud_run_image" {
  description = "The Docker image to deploy on Cloud Run"
  type        = string
  default     = "us-docker.pkg.dev/cloudrun/container/hello"
}

variable "cloud_run_memory" {
  description = "The amount of memory to allocate for the Cloud Run service"
  type        = string
  default     = "512Mi"
}

variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
  default     = "devops-task-430009"
}

variable "region" {
  description = "The region where resources will be deployed"
  type        = string
  default     = "us-central1"
}
