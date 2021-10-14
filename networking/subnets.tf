resource "aws_subnet" "aaa_subnet_aaa" {
  vpc_id = aws_vpc.aaa_vpc_aaa.id
  cidr_block = cidrsubnet(var.aaa_subnet_cidr_aaa, var.aaa_subnet_cidr_newbits_aaa, var.aaa_subnet_cidr_netnum_aaa + count.index)

  count = length(var.aaa_subnet_azs_aaa)
  availability_zone = var.aaa_subnet_azs_aaa[count.index]

  tags = {
    Name = "${var.aaa_subnet_aaa}-${count.index}"
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa]
}

resource "aws_subnet" "bbb_subnet_aaa" {
  vpc_id = aws_vpc.bbb_vpc_aaa.id
  cidr_block = cidrsubnet(var.bbb_subnet_cidr_aaa, var.bbb_subnet_cidr_newbits_aaa, var.bbb_subnet_cidr_netnum_aaa + count.index)

  count = length(var.bbb_subnet_azs_aaa)
  availability_zone = var.bbb_subnet_azs_aaa[count.index]

  tags = {
    Name = "${var.bbb_subnet_aaa}-${count.index}"
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa]
}