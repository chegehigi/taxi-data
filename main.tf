terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.19.0"
    }
  }
}

provider "google" {
  project = "taxi-data-project-416216"
  region  = "europe-west1-b"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "taxi-data-project-416216-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}