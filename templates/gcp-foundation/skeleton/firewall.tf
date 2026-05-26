resource "google_compute_firewall" "allow_ssh" {
  name = "${var.environment}-allow-ssh"

  network = var.use_existing_vpc ? data.google_compute_network.existing_vpc[0].name : google_compute_network.vpc[0].name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh"]
}