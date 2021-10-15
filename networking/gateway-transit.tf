resource "aws_ec2_transit_gateway" "aaa_transit_gateway_aaa" {
  amazon_side_asn = 64512

  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = var.aaa_transit_gateway_aaa
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "aaa-aaa_transit_gateway_aaa-bbb" {
  subnet_ids = aws_subnet.aaa_subnet_aaa.*.id
  transit_gateway_id = aws_ec2_transit_gateway.aaa_transit_gateway_aaa.id
  vpc_id = aws_vpc.aaa_vpc_aaa.id

  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = {
    Name = "${var.aaa_vpc_aaa}-${var.aaa_transit_gateway_aaa}-${var.bbb_vpc_aaa}"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "bbb-aaa_transit_gateway_aaa-aaa" {
  subnet_ids = aws_subnet.bbb_subnet_aaa.*.id
  transit_gateway_id = aws_ec2_transit_gateway.aaa_transit_gateway_aaa.id
  vpc_id = aws_vpc.bbb_vpc_aaa.id

  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = {
    Name = "${var.bbb_vpc_aaa}-${var.aaa_transit_gateway_aaa}-${var.aaa_vpc_aaa}"
  }
}

resource "aws_ec2_transit_gateway_route" "aaa_vpc_aaa" {
  destination_cidr_block         = var.bbb_vpc_cidr_aaa
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.aaa-aaa_transit_gateway_aaa-bbb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa-aaa_transit_gateway_aaa-bbb.id
}

resource "aws_ec2_transit_gateway_route_table" "bbb-aaa_transit_gateway_aaa-aaa" {
  transit_gateway_id = aws_ec2_transit_gateway.aaa_transit_gateway_aaa.id

  tags = {
    Name = "${var.aaa_transit_gateway_aaa}-${var.aaa_vpc_aaa}"
  }
}

resource "aws_ec2_transit_gateway_route" "bbb_vpc_aaa" {
  destination_cidr_block         = var.aaa_vpc_cidr_aaa
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.bbb-aaa_transit_gateway_aaa-aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.bbb-aaa_transit_gateway_aaa-aaa.id
}

resource "aws_ec2_transit_gateway_route_table" "aaa-aaa_transit_gateway_aaa-bbb" {
  transit_gateway_id = aws_ec2_transit_gateway.aaa_transit_gateway_aaa.id

  tags = {
    Name = "${var.aaa_transit_gateway_aaa}-${var.bbb_vpc_aaa}"
  }
}

resource "aws_ec2_transit_gateway_route_table_association" "aaa-aaa_transit_gateway_aaa-bbb" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa-aaa_transit_gateway_aaa-bbb.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa-aaa_transit_gateway_aaa-bbb.id
}

//resource "aws_ec2_transit_gateway_route_table_propagation" "aaa-aaa_transit_gateway_aaa-bbb" {
//  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.aaa-aaa_transit_gateway_aaa-bbb.id
//  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.aaa-aaa_transit_gateway_aaa-bbb.id
//}

resource "aws_ec2_transit_gateway_route_table_association" "bbb-aaa_transit_gateway_aaa-aaa" {
  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.bbb-aaa_transit_gateway_aaa-aaa.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.bbb-aaa_transit_gateway_aaa-aaa.id
}

//resource "aws_ec2_transit_gateway_route_table_propagation" "bbb-aaa_transit_gateway_aaa-aaa" {
//  transit_gateway_attachment_id = aws_ec2_transit_gateway_vpc_attachment.bbb-aaa_transit_gateway_aaa-aaa.id
//  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.bbb-aaa_transit_gateway_aaa-aaa.id
//}