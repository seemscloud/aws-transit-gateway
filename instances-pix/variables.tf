# Key Pairs
variable "aaa_key_pair_aaa" {
  type = string
}

# Instance
variable "aaa_ec2_aaa" {
  type = string
}

variable "aaa_ec2_count_per_az_aaa" {
  type = number
}

variable "aaa_ec2_type_aaa" {
  type = string
}

variable "aaa_ec2_rbd_type_aaa" {
  type = string
}

variable "aaa_ec2_rbd_size_aaa" {
  type = string
}

variable "aaa_ec2_ami_aaa" {
  type = string
}

# Networking
variable "aaa_subnet_azs_aaa" {
  type = list(string)
}

# Networking (Module)
variable "aws_nis-aaa_ec2_aaa" {
  type = list(string)
}