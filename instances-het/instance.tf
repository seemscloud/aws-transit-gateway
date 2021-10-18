resource "aws_instance" "bbb_ec2_aaa" {
  ami           = var.bbb_ec2_ami_aaa
  instance_type = var.bbb_ec2_type_aaa

  key_name = var.aaa_key_pair_aaa

  root_block_device {
    volume_type = var.bbb_ec2_rbd_type_aaa
    volume_size = var.bbb_ec2_rbd_size_aaa
  }

  network_interface {
    network_interface_id = var.aws_nis-bbb_ec2_aaa[count.index]
    device_index         = 0
  }

  count = var.bbb_ec2_count_per_az_aaa * length(var.bbb_subnet_azs_aaa)

  tags = {
    Name = "${var.bbb_ec2_aaa}-${count.index}"
  }
}