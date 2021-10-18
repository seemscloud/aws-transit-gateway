resource "aws_eip_association" "bastion" {
  instance_id = aws_instance.ccc_ec2_aaa[count.index].id
  allocation_id = var.aws_eip-ccc_ec2_aaa[count.index]

  count = length(var.ccc_subnet_azs_aaa)

  network_interface_id = var.aws_nis-ccc_ec2_aaa[count.index]
}