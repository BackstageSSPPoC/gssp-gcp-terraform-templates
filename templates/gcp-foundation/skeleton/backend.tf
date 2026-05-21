terraform {
  backend "gcs" {
    bucket = "gssp-tfstate-poc-2026"
    prefix = "${{ values.environment }}/gcp-infrastructure/${{ values.repo_name }}"
  }
}