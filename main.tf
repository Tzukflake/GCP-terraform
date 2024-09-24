resource "google_storage_bucket" "my-bucket" {
  name          = "tt-bucket"
  project       = "tt-dev-001"
  location      = "eu-north1"
  force_destroy = true
  public_access_prevention = "enforced"
}