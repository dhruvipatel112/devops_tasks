output "vpc_network_id" {
  description = "ID of the created VPC network"
  value       = google_compute_network.vpc_network.id
}

output "subnet_ids" {
  description = "IDs of the created subnets"
  value       = [for subnet in google_compute_subnetwork.subnet : subnet.id]
}

output "cloud_run_service_url" {
  description = "URL of the deployed Cloud Run service"
  value       = google_cloud_run_service.cloud_run_service.status[0].url
}
