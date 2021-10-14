# Additionals
variable "aaa_prefix_aaa" {
  type = string
}

# Provider
variable "aaa_region_aaa" {
  type = string
}

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

# Transit Gateway
variable "aaa_transit_gateway_aaa" {
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
