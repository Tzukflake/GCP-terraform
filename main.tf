provider "google" {
  credentials = file(var.credentials_file)  
  project     = var.project_id              
  region      = var.region                  
}

resource "google_storage_bucket" "my-bucket" {
  name          = "tt-bucket"
  location      = "EU"
  force_destroy = true
  public_access_prevention = "enforced"
}


variable "credentials_file" {
  description = "Path to the GCP credentials file"
}

variable "project_id" {
  description = "GCP project ID"
}

variable "region" {
  description = "GCP region"
}
