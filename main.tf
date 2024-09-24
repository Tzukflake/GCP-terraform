provider "google" {
  credentials = file("C:/Users/Andreizh/Downloads/git-gcp-terraform-8ca39467befd.json")  # Use forward slashes in the file path
  project     = "git-gcp-terraform"
  region      = "europe-north1"  # Use region only (without the zone suffix '-a')
}

resource "google_storage_bucket" "my-bucket" {
  name          = "tt-bucket"
  location      = "EU"
  force_destroy = true

  public_access_prevention = "enforced"
}
