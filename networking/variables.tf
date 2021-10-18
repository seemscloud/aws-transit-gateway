# VPC
variable "aaa_vpc_aaa" {
  type = string
}

variable "aaa_vpc_cidr_aaa" {
  type = string
}

variable "bbb_vpc_aaa" {
  type = string
}

variable "bbb_vpc_cidr_aaa" {
  type = string
}

variable "ccc_vpc_aaa" {
  type = string
}

variable "ccc_vpc_cidr_aaa" {
  type = string
}

# Transit Gateway
variable "aaa_tgw_aaa" {
  type = string
}

# Subnets
variable "aaa_subnet_aaa" {
  type = string
}

variable "aaa_subnet_cidr_aaa" {
  type = string
}

variable "aaa_subnet_cidr_newbits_aaa" {
  type = number
}

variable "aaa_subnet_cidr_netnum_aaa" {
  type = number
}

variable "aaa_subnet_azs_aaa" {
  type = list(string)
}

variable "bbb_subnet_aaa" {
  type = string
}

variable "bbb_subnet_cidr_aaa" {
  type = string
}

variable "bbb_subnet_cidr_newbits_aaa" {
  type = number
}

variable "bbb_subnet_cidr_netnum_aaa" {
  type = number
}

variable "bbb_subnet_azs_aaa" {
  type = list(string)
}

variable "ccc_subnet_aaa" {
  type = string
}

variable "ccc_subnet_cidr_aaa" {
  type = string
}

variable "ccc_subnet_cidr_newbits_aaa" {
  type = number
}

variable "ccc_subnet_cidr_netnum_aaa" {
  type = number
}

variable "ccc_subnet_azs_aaa" {
  type = list(string)
}

variable "ccc_subnet_bbb" {
  type = string
}

variable "ccc_subnet_cidr_bbb" {
  type = string
}

variable "ccc_subnet_cidr_newbits_bbb" {
  type = number
}

variable "ccc_subnet_cidr_netnum_bbb" {
  type = number
}

variable "ccc_subnet_azs_bbb" {
  type = list(string)
}

# EC2 Instances
variable "aaa_ec2_aaa" {
  type = string
}

variable "aaa_ec2_count_per_az_aaa" {
  type = number
}

variable "bbb_ec2_aaa" {
  type = string
}

variable "bbb_ec2_count_per_az_aaa" {
  type = number
}

variable "ccc_ec2_aaa" {
  type = string
}

variable "ccc_ec2_bbb" {
  type = string
}