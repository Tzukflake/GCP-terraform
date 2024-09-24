provider "google" {
  credentials = file("C:/Users/Andreizh/Downloads/git-gcp-terraform-8ca39467befd.json") 
  project     = "git-gcp-terraform"
  region      = "europe-north1"
}

resource "google_storage_bucket" "my-bucket" {
  name          = "tt-bucket"
  location      = "EU"
  force_destroy = true

  public_access_prevention = "enforced"
}
