output "vpc_network" {
  description = "The name of the VPC network"
  value       = google_compute_network.vpc_network.name
}

output "subnets" {
  description = "The names of the subnets"
  value       = google_compute_subnetwork.subnets[*].name
}

output "cloud_run_url" {
  description = "The URL of the Cloud Run service"
  value       = google_cloud_run_service.cloud_run.status[0].url
}
