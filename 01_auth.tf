# ---- variables with no default value
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "ssh_public_key_file" {}

# ---- variables with default value in terraform.tfvars
variable "authorized_ips" {}
variable "region" {}
variable "AD" {}
variable "vcn_name" {}
variable "vcn_dnslabel" {}
variable "cidr_vcn" {}
variable "cidr_subnet1" {}
variable "name" {}
variable "hostname" {}
variable "shape" {}

# ---- provider
provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
}

