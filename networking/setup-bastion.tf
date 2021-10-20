resource "aws_eip" "ccc_subnet_aaa-nat" {
  vpc = true

  count = length(var.ccc_subnet_azs_aaa)

  tags = {
    Name = "${var.ccc_subnet_aaa}-${count.index}-nat"
  }
}

resource "aws_nat_gateway" "ccc_subnet_aaa" {
  allocation_id = aws_eip.ccc_subnet_aaa-nat[count.index].id
  subnet_id     = aws_subnet.ccc_subnet_aaa[count.index].id

  count = length(var.ccc_subnet_azs_aaa)

  tags = {
    Name = "${var.ccc_subnet_aaa}-${count.index}-nat"
  }
}

resource "aws_eip" "ccc_ec2_aaa" {
  vpc = true

  count = length(var.ccc_subnet_azs_aaa)

  tags = {
    Name = "${var.ccc_ec2_aaa}-${count.index}"
  }
}

resource "aws_network_interface" "ccc_ec2_aaa" {
  subnet_id = aws_subnet.ccc_subnet_aaa[count.index].id

  count = length(var.ccc_subnet_azs_aaa)

  security_groups = [
    aws_security_group.ccc_ec2_aaa.id
  ]

  tags = {
    Name = "${var.ccc_ec2_aaa}-${count.index}"
  }
}

resource "aws_route_table" "ccc_subnet_aaa" {
  vpc_id = aws_vpc.ccc_vpc_aaa.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.ccc_vpc_aaa.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      nat_gateway_id             = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
    {
      cidr_block                 = var.aaa_vpc_cidr_aaa
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
    },
    {
      cidr_block                 = var.bbb_vpc_cidr_aaa
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

  lifecycle {
    ignore_changes = [
      route,
    ]
  }

  tags = {
    Name = var.ccc_subnet_aaa
  }
}

resource "aws_route_table_association" "ccc_subnet_aaa" {
  subnet_id      = aws_subnet.ccc_subnet_aaa[count.index].id
  count          = length(var.ccc_subnet_azs_aaa)
  route_table_id = aws_route_table.ccc_subnet_aaa.id
}

resource "aws_security_group" "ccc_ec2_aaa" {
  vpc_id = aws_vpc.ccc_vpc_aaa.id

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
    Name = var.ccc_ec2_aaa
  }

  depends_on = [
    aws_vpc.ccc_vpc_aaa
  ]
}
