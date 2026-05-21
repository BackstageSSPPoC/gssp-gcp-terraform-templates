output "bucket_name" {
  value = google_storage_bucket.bucket.name
}

output "bucket_url" {
  value = "gs://${google_storage_bucket.bucket.name}"
}

output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}

output "vm_name" {
  value = google_compute_instance.vm.name
}

output "vm_external_ip" {
  value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}