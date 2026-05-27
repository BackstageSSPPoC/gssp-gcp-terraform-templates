########################################
# EXISTING VPC
########################################

data "google_compute_network" "existing_vpc" {
  count = var.use_existing_vpc ? 1 : 0
  name  = var.existing_vpc_name
}

data "google_compute_subnetwork" "existing_subnet" {
  count  = var.use_existing_vpc ? 1 : 0
  name   = var.existing_subnet_name
  region = var.region
}

########################################
# CREATE NEW VPC
########################################

resource "google_compute_network" "vpc" {
  count = var.create_vpc ? 1 : 0              # ✅ create_vpc se control

  name                    = lower("${var.environment}-${var.app_name}-vpc")
  auto_create_subnetworks = false
}

########################################
# CREATE NEW SUBNET
########################################

resource "google_compute_subnetwork" "subnet" {
  count = var.create_vpc ? 1 : 0              # ✅ create_vpc se control

  name          = lower("${var.environment}-${var.app_name}-subnet")
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc[0].id
}