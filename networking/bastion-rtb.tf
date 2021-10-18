resource "aws_route_table" "ccc_ec2_aaa" {
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
    }
  ]

  tags = {
    Name = var.ccc_ec2_aaa
  }
}

resource "aws_route_table_association" "ccc_ec2_aaa" {
  subnet_id      = aws_subnet.ccc_subnet_aaa[count.index].id
  count          = length(var.ccc_subnet_azs_aaa)
  route_table_id = aws_route_table.ccc_ec2_aaa.id
}