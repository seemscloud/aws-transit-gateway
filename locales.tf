locals {
  # Random number
  random = "${var.aaa_prefix_aaa}${random_string.random.result}"

  # VPC
  aaa_vpc_aaa = "${local.random}-${var.aaa_vpc_aaa}"
  bbb_vpc_aaa = "${local.random}-${var.bbb_vpc_aaa}"
  ccc_vpc_aaa = "${local.random}-${var.ccc_vpc_aaa}"

  # Transit Gateway
  aaa_tgw_aaa = "${local.random}-${var.aaa_tgw_aaa}"

  # Subnets
  aaa_subnet_aaa = "${local.aaa_vpc_aaa}-${var.aaa_subnet_aaa}"
  bbb_subnet_aaa = "${local.bbb_vpc_aaa}-${var.bbb_subnet_aaa}"
  ccc_subnet_aaa = "${local.ccc_vpc_aaa}-${var.ccc_subnet_aaa}"

  # EC2 Instances
  aaa_ec2_aaa = "${local.bbb_vpc_aaa}-${var.aaa_ec2_aaa}"
  bbb_ec2_aaa = "${local.bbb_vpc_aaa}-${var.bbb_ec2_aaa}"
}