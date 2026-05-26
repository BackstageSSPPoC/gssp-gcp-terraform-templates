########################################
# PROJECT CONFIGURATION
########################################

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

########################################
# REGION / ZONE
########################################

variable "region" {
  description = "GCP region"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

########################################
# EXISTING VPC REUSE
########################################

variable "use_existing_vpc" {
  description = "Use existing VPC instead of creating a new one"
  type        = bool
  default     = false
}

variable "existing_vpc_name" {
  description = "Existing VPC name"
  type        = string
  default     = ""
}

variable "existing_subnet_name" {
  description = "Existing subnet name"
  type        = string
  default     = ""
}

########################################
# NEW NETWORK CONFIGURATION
########################################

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR range"
  type        = string
}

########################################
# COMPUTE ENGINE
########################################

variable "vm_name" {
  description = "Compute Engine VM name"
  type        = string
}

variable "machine_type" {
  description = "Compute Engine machine type"
  type        = string
}

########################################
# STORAGE
########################################

variable "bucket_name" {
  description = "GCS bucket name"
  type        = string
}