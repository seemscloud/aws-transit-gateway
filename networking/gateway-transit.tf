######################################################################
#
#  TGW
#
######################################################################

resource "aws_ec2_transit_gateway" "aaa_tgw_aaa" {
  amazon_side_asn = 64512

  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = var.aaa_tgw_aaa
  }
}

######################################################################
#
#  TGW -> VPC Subnets
#
######################################################################

resource "aws_ec2_transit_gateway_vpc_attachment" "aaa_tgw_aaa-aaa_vpc_aaa" {
  vpc_id = aws_vpc.aaa_vpc_aaa.id
  subnet_ids = aws_subnet.aaa_subnet_aaa.*.id

  transit_gateway_id = aws_ec2_transit_gateway.aaa_tgw_aaa.id

  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = {
    Name = "${var.aaa_tgw_aaa}-${var.aaa_vpc_aaa}"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "aaa_tgw_aaa-bbb_vpc_aaa" {
  vpc_id = aws_vpc.bbb_vpc_aaa.id
  subnet_ids = aws_subnet.bbb_subnet_aaa.*.id

  transit_gateway_id = aws_ec2_transit_gateway.aaa_tgw_aaa.id

  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = {
    Name = "${var.aaa_tgw_aaa}-${var.bbb_vpc_aaa}"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "aaa_tgw_aaa-ccc_vpc_aaa" {
  vpc_id = aws_vpc.ccc_vpc_aaa.id
  subnet_ids = aws_subnet.ccc_vpc_aaa.*.id

  transit_gateway_id = aws_ec2_transit_gateway.aaa_tgw_aaa.id

  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = {
    Name = "${var.aaa_tgw_aaa}-${var.ccc_vpc_aaa}"
  }
}

######################################################################
#
#  TGW Route Tables
#
######################################################################

resource "aws_ec2_transit_gateway_route_table" "aaa_tgw_aaa" {
  transit_gateway_id = aws_ec2_transit_gateway.aaa_tgw_aaa.id

  tags = {
    Name = "${var.aaa_tgw_aaa}-${var.aaa_vpc_aaa}"
  }
}

######################################################################
#
#  TGW Route Table -> TGW Attachment
#
######################################################################

resource "aws_ec2_transit_gateway_route_table_association" "aaa_tgw_aaa-aaa_vpc_aaa" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa_tgw_aaa-aaa_vpc_aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa_tgw_aaa.id
}

resource "aws_ec2_transit_gateway_route_table_association" "aaa_tgw_aaa-bbb_vpc_aaa" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa_tgw_aaa-bbb_vpc_aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa_tgw_aaa.id
}

resource "aws_ec2_transit_gateway_route_table_association" "aaa_tgw_aaa-ccc_vpc_aaa" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa_tgw_aaa-ccc_vpc_aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa_tgw_aaa.id
}

######################################################################
#
#  TGW Propagation -> TGW Attachment
#
######################################################################

resource "aws_ec2_transit_gateway_route_table_propagation" "aaa_tgw_aaa-aaa_vpc_aaa" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa_tgw_aaa-aaa_vpc_aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa_tgw_aaa.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "aaa_tgw_aaa-bbb_vpc_aaa" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa_tgw_aaa-bbb_vpc_aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa_tgw_aaa.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "aaa_tgw_aaa-ccc_vpc_aaa" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa_tgw_aaa-ccc_vpc_aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa_tgw_aaa.id
}