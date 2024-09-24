resource "google_storage_bucket" "my-bucket" {
  name                     = "tt-bucket"
  project                  = "tt-dev-001"
  location                 = "europe-north1"
  force_destroy            = true
  public_access_prevention = "enforced"
}