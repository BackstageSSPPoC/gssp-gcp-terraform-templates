resource "google_compute_firewall" "allow_ssh" {
  count = var.create_firewall ? 1 : 0  

  name = "${var.environment}-${var.app_name}-allow-ssh"

  network = google_compute_network.vpc[0].name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh"]
}
