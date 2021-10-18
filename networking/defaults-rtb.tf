resource "aws_default_route_table" "aaa_vpc_aaa" {
  default_route_table_id = aws_vpc.aaa_vpc_aaa.default_route_table_id

  route = []

  tags = {
    Name = "default-${var.aaa_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa
  ]
}

resource "aws_default_route_table" "bbb_vpc_aaa" {
  default_route_table_id = aws_vpc.bbb_vpc_aaa.default_route_table_id

  route = []

  tags = {
    Name = "default-${var.bbb_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.bbb_vpc_aaa
  ]
}

resource "aws_default_route_table" "ccc_vpc_aaa" {
  default_route_table_id = aws_vpc.ccc_vpc_aaa.default_route_table_id

  route = []

  tags = {
    Name = "default-${var.ccc_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa
  ]
}