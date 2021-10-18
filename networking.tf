module "networking" {
  source = "./networking"

  # VPC
  aaa_vpc_aaa      = local.aaa_vpc_aaa
  aaa_vpc_cidr_aaa = var.aaa_vpc_cidr_aaa

  bbb_vpc_aaa      = local.bbb_vpc_aaa
  bbb_vpc_cidr_aaa = var.bbb_vpc_cidr_aaa

  ccc_vpc_aaa      = local.ccc_vpc_aaa
  ccc_vpc_cidr_aaa = var.ccc_vpc_cidr_aaa

  # Transit Gateway
  aaa_tgw_aaa = local.aaa_tgw_aaa

  # Subnets
  aaa_subnet_aaa              = local.aaa_subnet_aaa
  aaa_subnet_cidr_aaa         = var.aaa_subnet_cidr_aaa
  aaa_subnet_cidr_newbits_aaa = var.aaa_subnet_cidr_newbits_aaa
  aaa_subnet_cidr_netnum_aaa  = var.aaa_subnet_cidr_netnum_aaa
  aaa_subnet_azs_aaa          = var.aaa_subnet_azs_aaa

  bbb_subnet_aaa              = local.bbb_subnet_aaa
  bbb_subnet_cidr_aaa         = var.bbb_subnet_cidr_aaa
  bbb_subnet_cidr_newbits_aaa = var.bbb_subnet_cidr_newbits_aaa
  bbb_subnet_cidr_netnum_aaa  = var.bbb_subnet_cidr_netnum_aaa
  bbb_subnet_azs_aaa          = var.bbb_subnet_azs_aaa

  ccc_subnet_aaa              = local.ccc_subnet_aaa
  ccc_subnet_cidr_aaa         = var.ccc_subnet_cidr_aaa
  ccc_subnet_cidr_newbits_aaa = var.ccc_subnet_cidr_newbits_aaa
  ccc_subnet_cidr_netnum_aaa  = var.ccc_subnet_cidr_netnum_aaa
  ccc_subnet_azs_aaa          = var.ccc_subnet_azs_aaa

  ccc_subnet_bbb              = local.ccc_subnet_bbb
  ccc_subnet_cidr_bbb         = var.ccc_subnet_cidr_bbb
  ccc_subnet_cidr_newbits_bbb = var.ccc_subnet_cidr_newbits_bbb
  ccc_subnet_cidr_netnum_bbb  = var.ccc_subnet_cidr_netnum_bbb
  ccc_subnet_azs_bbb          = var.ccc_subnet_azs_bbb

  # EC2 Instances
  aaa_ec2_aaa              = local.aaa_ec2_aaa
  aaa_ec2_count_per_az_aaa = var.aaa_ec2_count_per_az_aaa

  bbb_ec2_aaa              = local.bbb_ec2_aaa
  bbb_ec2_count_per_az_aaa = var.bbb_ec2_count_per_az_aaa

  ccc_ec2_aaa = local.ccc_ec2_aaa
  ccc_ec2_bbb = local.ccc_ec2_bbb
}
