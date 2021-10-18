resource "aws_subnet" "aaa_subnet_aaa" {
  vpc_id     = aws_vpc.aaa_vpc_aaa.id
  cidr_block = cidrsubnet(var.aaa_subnet_cidr_aaa, var.aaa_subnet_cidr_newbits_aaa, var.aaa_subnet_cidr_netnum_aaa + count.index)

  count             = length(var.aaa_subnet_azs_aaa)
  availability_zone = var.aaa_subnet_azs_aaa[count.index]

  tags = {
    Name = "${var.aaa_subnet_aaa}-${count.index}"
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa
  ]
}

resource "aws_subnet" "bbb_subnet_aaa" {
  vpc_id     = aws_vpc.bbb_vpc_aaa.id
  cidr_block = cidrsubnet(var.bbb_subnet_cidr_aaa, var.bbb_subnet_cidr_newbits_aaa, var.bbb_subnet_cidr_netnum_aaa + count.index)

  count             = length(var.bbb_subnet_azs_aaa)
  availability_zone = var.bbb_subnet_azs_aaa[count.index]

  tags = {
    Name = "${var.bbb_subnet_aaa}-${count.index}"
  }

  depends_on = [
    aws_vpc.bbb_vpc_aaa
  ]
}

resource "aws_subnet" "ccc_subnet_aaa" {
  vpc_id     = aws_vpc.ccc_vpc_aaa.id
  cidr_block = cidrsubnet(var.ccc_subnet_cidr_aaa, var.ccc_subnet_cidr_newbits_aaa, var.ccc_subnet_cidr_netnum_aaa + count.index)

  count             = length(var.ccc_subnet_azs_aaa)
  availability_zone = var.ccc_subnet_azs_aaa[count.index]

  tags = {
    Name = "${var.ccc_subnet_aaa}-${count.index}"
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa
  ]
}

resource "aws_subnet" "ccc_subnet_bbb" {
  vpc_id     = aws_vpc.ccc_vpc_aaa.id
  cidr_block = cidrsubnet(var.ccc_subnet_cidr_bbb, var.ccc_subnet_cidr_newbits_bbb, var.ccc_subnet_cidr_netnum_bbb + count.index)

  count             = length(var.ccc_subnet_azs_bbb)
  availability_zone = var.ccc_subnet_azs_bbb[count.index]

  tags = {
    Name = "${var.ccc_subnet_bbb}-${count.index}"
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa
  ]
}