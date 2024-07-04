# Bucket

resource "google_storage_bucket" "website" {
  name = "example-bucket-rey"
  location = "EU"
}

resource "google_storage_bucket_access_control" "public_rule" {
  bucket = google_storage_bucket.bucket.name
  role   = "READER"
  entity = "allUsers"
}

resource "google_storage_bucket" "bucket" {
  name     = "static-content-bucket"
  location = "US"
}