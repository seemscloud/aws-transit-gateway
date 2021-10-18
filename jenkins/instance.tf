resource "aws_instance" "ccc_ec2_bbb" {
  ami           = var.ccc_ec2_ami_bbb
  instance_type = var.ccc_ec2_type_bbb

  key_name = var.aaa_key_pair_aaa

  root_block_device {
    volume_type = var.ccc_ec2_rbd_type_bbb
    volume_size = var.ccc_ec2_rbd_size_bbb
  }

  network_interface {
    network_interface_id = var.aws_nis-ccc_ec2_bbb[count.index]
    device_index         = 0
  }

  count = length(var.ccc_subnet_azs_bbb)

  tags = {
    Name = "${var.ccc_ec2_bbb}-${count.index}"
  }
}