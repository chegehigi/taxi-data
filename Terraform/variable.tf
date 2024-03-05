variable "credentials" {
  type        = string
  default     = "/home/chegehigi/keys/taxi-data-project.json"
  description = "Project credentials"
}

variable "project" {
  type        = string
  default     = "taxi-data-project-416216"
  description = "Project"
}

variable "region" {
  type        = string
  default     = "europe-west1-b"
  description = "Project region"
}

variable "location" {
  type        = string
  default     = "EU"
  description = "Project location"
}

variable "bq_dataset_name" {
  type        = string
  default     = "demo_dataset"
  description = "My BigQuery Dataset Name"
}

variable "gcs_bucket_name" {
  type        = string
  default     = "taxi-data-project-416216-bucket"
  description = "Bucket Storage name"
}

variable "gcs_storage_class" {
  type        = string
  default     = "STANDARD"
  description = "Bucket Storage Class"
}
