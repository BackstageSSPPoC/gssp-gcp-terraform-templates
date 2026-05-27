########################################
# STORAGE OUTPUTS
########################################

output "bucket_name" {
  description = "GCS Bucket name"
  value       = var.create_bucket ? google_storage_bucket.bucket[0].name : null
}

output "bucket_url" {
  description = "GCS Bucket URL"
  value       = var.create_bucket ? "gs://${google_storage_bucket.bucket[0].name}" : null
}


########################################
# NETWORK OUTPUTS
########################################

output "vpc_name" {
  description = "VPC name"
  value = var.use_existing_vpc ? data.google_compute_network.existing_vpc[0].name : (
    var.create_vpc ? google_compute_network.vpc[0].name : null
  )
}

output "subnet_name" {
  description = "Subnet name"
  value = var.use_existing_vpc ? data.google_compute_subnetwork.existing_subnet[0].name : (
    var.create_vpc ? google_compute_subnetwork.subnet[0].name : null
  )
}
########################################
# COMPUTE ENGINE OUTPUTS
########################################

output "vm_name" {
  description = "VM Instance name"
  value       = var.create_vm ? google_compute_instance.vm[0].name : null
}

output "vm_external_ip" {
  description = "VM External IP"
  value       = var.create_vm ? google_compute_instance.vm[0].network_interface[0].access_config[0].nat_ip : null
}