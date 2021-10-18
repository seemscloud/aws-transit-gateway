# Key Pairs
variable "aaa_key_pair_aaa" {
  type = string
}

# Instance
variable "ccc_ec2_bbb" {
  type = string
}

variable "ccc_ec2_type_bbb" {
  type = string
}

variable "ccc_ec2_rbd_type_bbb" {
  type = string
}

variable "ccc_ec2_rbd_size_bbb" {
  type = string
}

variable "ccc_ec2_ami_bbb" {
  type = string
}

# Networking
variable "ccc_subnet_azs_bbb" {
  type = list(string)
}

# Networking (Module)
variable "aws_nis-ccc_ec2_bbb" {
  type = list(string)
}