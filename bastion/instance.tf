resource "aws_instance" "ccc_ec2_aaa" {
  ami           = var.ccc_ec2_ami_aaa
  instance_type = var.ccc_ec2_type_aaa

  key_name = var.aaa_key_pair_aaa

  root_block_device {
    volume_type = var.ccc_ec2_rbd_type_aaa
    volume_size = var.ccc_ec2_rbd_size_aaa
  }

  network_interface {
    network_interface_id = var.aws_nis-ccc_ec2_aaa[count.index]
    device_index         = 0
  }

  count = length(var.ccc_subnet_azs_aaa)

  tags = {
    Name = "${var.ccc_ec2_aaa}-${count.index}"
  }
}