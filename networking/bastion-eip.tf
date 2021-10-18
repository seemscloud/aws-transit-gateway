resource "aws_eip" "ccc_ec2_aaa" {
  vpc = true

  count = length(var.ccc_subnet_azs_aaa)

  tags = {
    Name = "${var.ccc_ec2_aaa}-${count.index}"
  }
}