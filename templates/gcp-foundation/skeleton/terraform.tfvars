########################################
# PROJECT CONFIGURATION
########################################

project_id   = "${{ values.project_id }}"
app_name     = "${{ values.app_name }}"
environment  = "${{ values.environment }}"

########################################
# REGION / ZONE
########################################

region       = "${{ values.region }}"
zone         = "${{ values.zone }}"

########################################
# EXISTING VPC REUSE
########################################

use_existing_vpc     = ${{ values.use_existing_vpc }}
existing_vpc_name    = "${{ values.existing_vpc_name }}"
existing_subnet_name = "${{ values.existing_subnet_name }}"

########################################
# NEW NETWORK CONFIGURATION
########################################

vpc_name     = "${{ values.vpc_name }}"
subnet_name  = "${{ values.subnet_name }}"
subnet_cidr  = "${{ values.subnet_cidr }}"

########################################
# COMPUTE ENGINE
########################################

vm_name      = "${{ values.vm_name }}"
machine_type = "${{ values.machine_type }}"

########################################
# STORAGE
########################################

bucket_name  = "${{ values.bucket_name }}"

create_vpc      = ${{ values.create_vpc }}
create_firewall = ${{ values.create_firewall }}
create_vm       = ${{ values.create_vm }}
create_bucket   = ${{ values.create_bucket }}
