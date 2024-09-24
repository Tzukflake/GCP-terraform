resource "google_storage_bucket" "my-bucket" {
  name                     = "tt-bucket"
  project                  = "Git-gcp-terraform"
  location                 = "europe-north1"
  force_destroy            = true
  public_access_prevention = "enforced"
}