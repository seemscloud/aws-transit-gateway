# Key Pairs
variable "aaa_key_pair_aaa" {
  type = string
}

# Instance
variable "ccc_ec2_aaa" {
  type = string
}

variable "ccc_ec2_type_aaa" {
  type = string
}

variable "ccc_ec2_rbd_type_aaa" {
  type = string
}

variable "ccc_ec2_rbd_size_aaa" {
  type = string
}

variable "ccc_ec2_ami_aaa" {
  type = string
}

# Networking
variable "ccc_subnet_azs_aaa" {
  type = list(string)
}

# Networking (Module)
variable "aws_eip-ccc_ec2_aaa" {
  type = list(string)
}

variable "aws_nis-ccc_ec2_aaa" {
  type = list(string)
}