resource "aws_default_security_group" "aaa_vpc_aaa" {
  vpc_id = aws_vpc.aaa_vpc_aaa.id

  ingress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags = {
    Name = "default-${var.aaa_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa]
}

resource "aws_default_security_group" "bbb_vpc_aaa" {
  vpc_id = aws_vpc.bbb_vpc_aaa.id

  ingress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags = {
    Name = "default-${var.bbb_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.bbb_vpc_aaa]
}

resource "aws_default_security_group" "ccc_vpc_aaa" {
  vpc_id = aws_vpc.ccc_vpc_aaa.id

  ingress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags = {
    Name = "default-${var.ccc_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa]
}