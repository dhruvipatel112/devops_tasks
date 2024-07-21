terraform {
  required_providers {
    google ={
        source = "hashicorp/google"
        version = "5.38.0"
    }
  }
}

provider "google" {
  credentials = file("./credentials.json")
  project = "devops-task-430009"
  region = "us-central1"
  zone = "us-central1-a"
}

