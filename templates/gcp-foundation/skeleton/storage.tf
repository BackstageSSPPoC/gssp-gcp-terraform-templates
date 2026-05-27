resource "google_storage_bucket" "bucket" {
  name                        = lower("${var.environment}-${var.app_name}-${var.bucket_name}")
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true
}
