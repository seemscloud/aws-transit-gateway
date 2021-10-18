resource "aws_network_interface" "bbb_ec2_aaa" {
  subnet_id = aws_subnet.bbb_subnet_aaa[count.index % length(var.bbb_subnet_azs_aaa)].id

  count = var.bbb_ec2_count_per_az_aaa * length(var.bbb_subnet_azs_aaa)

  security_groups = [
    aws_security_group.bbb_ec2_aaa.id
  ]

  tags = {
    Name = "${var.bbb_ec2_aaa}-${count.index}"
  }
}

resource "aws_eip" "aaa_vpc_aaa" {
  vpc = true

  count = length(aws_subnet.aaa_subnet_aaa)

  tags = {
    Name = "${var.aaa_vpc_aaa}-${count.index}"
  }
}

resource "aws_nat_gateway" "aaa_vpc_aaa" {
  allocation_id = aws_eip.aaa_vpc_aaa[count.index].id
  subnet_id     = aws_subnet.aaa_subnet_aaa[count.index].id

  count = length(aws_subnet.aaa_subnet_aaa)

  tags = {
    Name = "${var.aaa_vpc_aaa}-${count.index}"
  }
}

resource "aws_route_table" "bbb_ec2_aaa" {
  vpc_id = aws_vpc.bbb_vpc_aaa.id

  route = [
    {
      cidr_block                 = var.ccc_vpc_cidr_aaa
      gateway_id                 = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = aws_ec2_transit_gateway.aaa_tgw_aaa.id
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    }
  ]

  tags = {
    Name = var.bbb_ec2_aaa
  }
}

resource "aws_route_table_association" "bbb_ec2_aaa" {
  subnet_id      = aws_subnet.bbb_subnet_aaa[count.index].id
  count          = length(var.bbb_subnet_azs_aaa)
  route_table_id = aws_route_table.bbb_ec2_aaa.id
}

resource "aws_security_group" "bbb_ec2_aaa" {
  vpc_id = aws_vpc.bbb_vpc_aaa.id

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }

  tags = {
    Name = var.bbb_vpc_aaa
  }

  depends_on = [
    aws_vpc.bbb_vpc_aaa
  ]
}