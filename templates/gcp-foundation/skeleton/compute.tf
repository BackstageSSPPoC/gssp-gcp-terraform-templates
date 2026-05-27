resource "google_compute_instance" "vm" {
  count        = var.create_vm ? 1 : 0 
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = var.use_existing_vpc ? data.google_compute_subnetwork.existing_subnet[0].id : google_compute_subnetwork.subnet[0].id

    access_config {
    }
  }

  tags = ["ssh"]
}