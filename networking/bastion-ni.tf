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