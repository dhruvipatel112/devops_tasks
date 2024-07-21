resource "google_cloud_run_service" "cloudrun" {
  name     = "cloudrun-srv"
  location = "us-central1"
  project = "devops-task-430009"

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}


data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.cloudrun.location
  project     = google_cloud_run_service.cloudrun.project
  service     = google_cloud_run_service.cloudrun.name
  policy_data = data.google_iam_policy.noauth.policy_data
}

