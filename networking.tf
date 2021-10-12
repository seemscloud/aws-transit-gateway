module "networking" {
  source = "./networking"

  # VPC
  aaa_vpc_aaa = local.aaa_vpc_aaa
  aaa_vpc_cidr_aaa = var.aaa_vpc_cidr_aaa
  bbb_vpc_aaa = local.bbb_vpc_aaa
  bbb_vpc_cidr_aaa = var.bbb_vpc_cidr_aaa

  # Subnets
  aaa_subnet_aaa = local.aaa_subnet_aaa
  aaa_subnet_cidr_aaa = var.aaa_subnet_cidr_aaa
  aaa_subnet_azs_aaa = var.aaa_subnet_azs_aaa

  bbb_subnet_aaa = local.aaa_subnet_aaa
  bbb_subnet_cidr_aaa = var.aaa_subnet_cidr_aaa
  bbb_subnet_azs_aaa = var.aaa_subnet_azs_aaa
}