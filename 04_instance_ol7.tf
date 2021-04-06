# ------ Create a compute instance from the most recent Oracle Linux 7.x image
resource "oci_core_instance" "orm-demo01-ol7" {
  availability_domain  = var.instance_AD_name
  compartment_id       = var.compartment_ocid
  display_name         = var.instance_name
  shape                = var.instance_shape
  preserve_boot_volume = "false"

  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.ImageOCID-ol7.images[0]["id"]
  }

  create_vnic_details {
    subnet_id      = oci_core_subnet.orm-demo01-public-subnet1.id
    hostname_label = var.instance_hostname
  }

  metadata = {
    ssh_authorized_keys = var.public_ssh_key
    user_data           = base64encode(file("userdata/bootstrap_ol7.sh"))
  }
}

# ------ Display public IP address of the instance
output "Public_IP_address" {
  value = oci_core_instance.orm-demo01-ol7.public_ip
}

