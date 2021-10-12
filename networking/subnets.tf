resource "aws_subnet" "aaa_subnet_aaa" {
  vpc_id = aws_vpc.aaa_vpc_aaa.id
  cidr_block = var.aaa_subnet_cidr_aaa

  count = length(var.aaa_subnet_azs_aaa)
  availability_zone = element(var.aaa_subnet_azs_aaa, count.index)

  tags = {
    Name = var.aaa_subnet_aaa
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa]
}