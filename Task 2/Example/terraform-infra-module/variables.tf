variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Region to deploy resources"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "List of subnet CIDRs"
  type        = list(string)
}

variable "service_name" {
  description = "Name of the Cloud Run service"
  type        = string
}

variable "service_image" {
  description = "Docker image for the Cloud Run service"
  type        = string
}

variable "memory_limit" {
  description = "Memory allocation for the Cloud Run service"
  type        = string
  default     = "256Mi"
}
