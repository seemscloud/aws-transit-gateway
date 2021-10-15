resource "aws_vpc" "aaa_vpc_aaa" {
  cidr_block = var.aaa_vpc_cidr_aaa

  tags = {
    Name = var.aaa_vpc_aaa
  }
}

resource "aws_vpc" "bbb_vpc_aaa" {
  cidr_block = var.bbb_vpc_cidr_aaa

  tags = {
    Name = var.bbb_vpc_aaa
  }
}

resource "aws_vpc" "ccc_vpc_aaa" {
  cidr_block = var.ccc_vpc_cidr_aaa

  tags = {
    Name = var.ccc_vpc_aaa
  }
}