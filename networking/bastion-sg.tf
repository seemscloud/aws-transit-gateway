resource "aws_security_group" "ccc_ec2_aaa" {
  vpc_id = aws_vpc.ccc_vpc_aaa.id

  ingress {
    protocol = "tcp"
    from_port = 22
    to_port = 22
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
    Name = var.ccc_vpc_aaa
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa]
}
