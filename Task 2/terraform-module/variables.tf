variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
}

variable "cloud_run_service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "cloud_run_image" {
  description = "The Docker image to deploy on Cloud Run"
  type        = string
}

variable "cloud_run_memory" {
  description = "The amount of memory to allocate for the Cloud Run service"
  type        = string
  default     = "512Mi"
}

variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region where resources will be deployed"
  type        = string
  default     = "us-central1"
}
