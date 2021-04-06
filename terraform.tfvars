# ========= Default values for some variables

# ---- Authorized public IPs ingress
authorized_ips   = "92.150.129.183/32"

# ---- availability domain (1, 2 or 3)
region           = "eu-frankfurt-1"
AD               = "1"

# ---- VCN
vcn_name         = "ocirm-demo01-vcn"
vcn_dnslabel     = "demo01"
cidr_vcn         = "10.0.0.0/16"
cidr_subnet1     = "10.0.0.0/24"

# ---- Compute instance
name             = "ocirm-demo01"
hostname         = "demo01"
shape            = "VM.Standard.E2.1"
