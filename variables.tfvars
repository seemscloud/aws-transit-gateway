# Additionals
aaa_prefix_aaa = "a"

# Provider
aaa_region_aaa = "eu-central-1"

# VPC
aaa_vpc_aaa      = "foo"
aaa_vpc_cidr_aaa = "10.100.0.0/16"

bbb_vpc_aaa      = "bar"
bbb_vpc_cidr_aaa = "10.200.0.0/16"

ccc_vpc_aaa      = "mgmt"
ccc_vpc_cidr_aaa = "10.255.255.0/24"

# Transit Gateway
aaa_tgw_aaa = "000"

# Subnets
aaa_subnet_aaa              = "pix"
aaa_subnet_cidr_aaa         = "10.100.0.0/24" # 10.100.0.0/26, 10.100.0.64/26, 10.100.0.128/26
aaa_subnet_cidr_newbits_aaa = 2
aaa_subnet_cidr_netnum_aaa  = 0
aaa_subnet_azs_aaa          = [
  "eu-central-1a",
  "eu-central-1b",
  "eu-central-1c"
]

bbb_subnet_aaa              = "pix"
bbb_subnet_cidr_aaa         = "10.200.0.0/24" # 10.200.0.0/26, 10.200.0.64/26, 10.200.0.128/26
bbb_subnet_cidr_newbits_aaa = 2
bbb_subnet_cidr_netnum_aaa  = 0
bbb_subnet_azs_aaa          = [
  "eu-central-1a",
  "eu-central-1b",
  "eu-central-1c"
]

ccc_subnet_aaa              = "bastion"
ccc_subnet_cidr_aaa         = "10.255.255.0/24" # 10.255.255.0/28, 10.255.255.16/28, 10.255.255.32/28
ccc_subnet_cidr_newbits_aaa = 4
ccc_subnet_cidr_netnum_aaa  = 0
ccc_subnet_azs_aaa          = [
  "eu-central-1a",
  "eu-central-1b",
  "eu-central-1c"
]

ccc_subnet_bbb              = "jenkins"
ccc_subnet_cidr_bbb         = "10.255.255.0/24" # 10.255.255.0/28, 10.255.255.16/28, 10.255.255.32/28
ccc_subnet_cidr_newbits_bbb = 4
ccc_subnet_cidr_netnum_bbb  = 3
ccc_subnet_azs_bbb          = [
  "eu-central-1a",
  "eu-central-1b",
  "eu-central-1c"
]

# EC2 Instances
aaa_ec2_aaa = "pix"

bbb_ec2_aaa = "pix"

ccc_ec2_aaa          = "bastion"
ccc_ec2_type_aaa     = "t2.micro"
ccc_ec2_rbd_type_aaa = "gp2"
ccc_ec2_rbd_size_aaa = "20"
ccc_ec2_ami_aaa      = "ami-05f7491af5eef733a"

ccc_ec2_bbb = "jenkins"