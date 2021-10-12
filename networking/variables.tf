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

# Subnets
variable "aaa_subnet_aaa" {
  type = string
}

variable "aaa_subnet_cidr_aaa" {
  type = string
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

variable "bbb_subnet_azs_aaa" {
  type = list(string)
}