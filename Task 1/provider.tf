terraform {
  required_providers {
    google ={
        source = "hashicorp/google"
        version = "5.38.0"
    }
  }
}

provider "google" {
  credentials = file("credentails.json")
  project = var.project_id
  region = "us-central1"
  zone = "us-central1-a"
}

