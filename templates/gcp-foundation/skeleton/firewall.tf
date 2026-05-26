resource "google_compute_firewall" "allow_ssh" {
  count = var.use_existing_vpc ? 0 : 1

  name = "${var.environment}-allow-ssh"

  network = google_compute_network.vpc[0].name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh"]
}