resource "aws_internet_gateway" "aaa_vpc_aaa" {
  vpc_id = aws_vpc.aaa_vpc_aaa.id

  tags = {
    Name = var.aaa_vpc_aaa
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa]
}

resource "aws_internet_gateway" "bbb_vpc_aaa" {
  vpc_id = aws_vpc.bbb_vpc_aaa.id

  tags = {
    Name = var.bbb_vpc_aaa
  }

  depends_on = [
    aws_vpc.bbb_vpc_aaa]
}

resource "aws_internet_gateway" "ccc_vpc_aaa" {
  vpc_id = aws_vpc.ccc_vpc_aaa.id

  tags = {
    Name = var.ccc_vpc_aaa
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa]
}