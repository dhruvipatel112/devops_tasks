provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "vpc_network" {
  name                    = "vpc-network"
  auto_create_subnetworks = false
  ip_range                = var.vpc_cidr
}

resource "google_compute_subnetwork" "subnets" {
  count        = length(var.subnet_cidrs)
  name         = "subnet-${count.index}"
  network      = google_compute_network.vpc_network.name
  ip_cidr_range = var.subnet_cidrs[count.index]
  region       = var.region
}

resource "google_cloud_run_service" "cloud_run" {
  name     = var.cloud_run_service_name
  location = var.region

  template {
    spec {
      containers {
        image = var.cloud_run_image
        resources {
          limits = {
            memory = var.cloud_run_memory
          }
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

