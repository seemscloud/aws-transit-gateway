locals {
  # Random number
  random = "${var.aaa_prefix_aaa}${random_string.random.result}"

  # VPC
  aaa_vpc_aaa = "${local.random}-${var.aaa_vpc_aaa}"
  bbb_vpc_aaa = "${local.random}-${var.bbb_vpc_aaa}"

  # Subnets
  aaa_subnet_aaa = "${local.random}-${var.aaa_subnet_aaa}"
  bbb_subnet_aaa = "${local.random}-${var.bbb_subnet_aaa}"
}