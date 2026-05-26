########################################
# EXISTING VPC
########################################

data "google_compute_network" "existing_vpc" {
  count = var.use_existing_vpc ? 1 : 0

  name = var.existing_vpc_name
}

########################################
# EXISTING SUBNET
########################################

data "google_compute_subnetwork" "existing_subnet" {
  count = var.use_existing_vpc ? 1 : 0

  name   = var.existing_subnet_name
  region = var.region
}

########################################
# CREATE NEW VPC
########################################

resource "google_compute_network" "vpc" {
  count = var.use_existing_vpc ? 0 : 1

  name                    = "${var.environment}-${var.vpc_name}"
  auto_create_subnetworks = false
}

########################################
# CREATE NEW SUBNET
########################################

resource "google_compute_subnetwork" "subnet" {
  count = var.use_existing_vpc ? 0 : 1

  name          = "${var.environment}-${var.subnet_name}"
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc[0].id
}