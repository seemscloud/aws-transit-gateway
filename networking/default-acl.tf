resource "aws_default_network_acl" "aaa_vpc_aaa" {
  default_network_acl_id = aws_vpc.aaa_vpc_aaa.default_network_acl_id

  ingress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }

  egress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }

  lifecycle {
    ignore_changes = [
      subnet_ids]
  }

  tags = {
    Name = "default-${var.aaa_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.aaa_vpc_aaa]
}

resource "aws_default_network_acl" "bbb_vpc_aaa" {
  default_network_acl_id = aws_vpc.bbb_vpc_aaa.default_network_acl_id

  ingress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }

  egress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }

  lifecycle {
    ignore_changes = [
      subnet_ids]
  }

  tags = {
    Name = "default-${var.bbb_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.bbb_vpc_aaa]
}

resource "aws_default_network_acl" "ccc_vpc_aaa" {
  default_network_acl_id = aws_vpc.ccc_vpc_aaa.default_network_acl_id

  ingress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }

  egress {
    rule_no = 100
    action = "allow"
    protocol = -1
    from_port = 0
    to_port = 0
    cidr_block = "0.0.0.0/0"
  }

  lifecycle {
    ignore_changes = [
      subnet_ids]
  }

  tags = {
    Name = "default-${var.ccc_vpc_aaa}"
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa]
}