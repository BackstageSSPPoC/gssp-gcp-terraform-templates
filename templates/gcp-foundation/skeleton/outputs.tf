########################################
# STORAGE OUTPUTS
########################################

output "bucket_name" {
  description = "GCS bucket name"

  value = google_storage_bucket.bucket.name
}

output "bucket_url" {
  description = "GCS bucket URL"

  value = "gs://${google_storage_bucket.bucket.name}"
}

########################################
# NETWORK OUTPUTS
########################################

output "vpc_name" {
  description = "VPC name"

  value = var.use_existing_vpc ? data.google_compute_network.existing_vpc[0].name : google_compute_network.vpc[0].name
}

output "subnet_name" {
  description = "Subnet name"

  value = var.use_existing_vpc ? data.google_compute_subnetwork.existing_subnet[0].name : google_compute_subnetwork.subnet[0].name
}

########################################
# COMPUTE ENGINE OUTPUTS
########################################

output "vm_name" {
  description = "Compute Engine VM name"

  value = google_compute_instance.vm.name
}

output "vm_external_ip" {
  description = "Compute Engine external IP"

  value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}