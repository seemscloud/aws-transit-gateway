resource "aws_default_route_table" "aaa_vpc_aaa" {
  default_route_table_id = aws_vpc.aaa_vpc_aaa.default_route_table_id

  route = []

  tags = {
    Name = var.aaa_vpc_aaa
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa]
}

resource "aws_default_route_table" "bbb_vpc_aaa" {
  default_route_table_id = aws_vpc.bbb_vpc_aaa.default_route_table_id

  route = []

  tags = {
    Name = var.bbb_vpc_aaa
  }

  depends_on = [
    aws_vpc.bbb_vpc_aaa]
}