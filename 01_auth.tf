# ---- variables defined by user at run time

# value retrieved automatically by OCI resource manager
variable "compartment_ocid" {}

# options for VCN
variable "name_vcn" {}
variable "cidr_vcn" {}
variable "cidr_subnet1" {}
variable "authorized_ips" {}

# options for compute instance
variable "instance_AD_name" {}
variable "instance_name" {}
variable "instance_shape" {}
variable "public_ssh_key" {}

# ---- provider (Not needed by OCI resource manager)
#variable "region" {}
#variable "tenancy_ocid" {}
#variable "user_ocid" {}
#variable "fingerprint" {}
#variable "private_key_path" {}

#provider "oci" {
#  region           = var.region
#  tenancy_ocid     = var.tenancy_ocid
#  user_ocid        = var.user_ocid
#  fingerprint      = var.fingerprint
#  private_key_path = var.private_key_path
#}

