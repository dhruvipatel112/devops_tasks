resource "google_project_service" "compute_api" {
  project = "devops-task-430009"
  service = "iam.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}


