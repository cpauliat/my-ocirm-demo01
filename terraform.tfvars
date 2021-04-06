# ========= Default values for some variables

# ---- Authorized public IPs ingress
authorized_ips   = "92.150.129.183/32"

# ---- availability domain (1, 2 or 3)
AD               = "1"

# ---- IP addresses
cidr_vcn         = "10.0.0.0/16"
cidr_subnet1     = "10.0.0.0/24"

# ---- Compute instances
BootStrapFile_ol7 = "userdata/bootstrap_ol7.sh"
