module "bastion" {
  source = "./bastion"

  # Key Pair
  aaa_key_pair_aaa = aws_key_pair.aaa_key_pair_aaa.key_name

  # Instance
  ccc_ec2_aaa          = local.ccc_ec2_aaa
  ccc_ec2_ami_aaa      = var.ccc_ec2_ami_aaa
  ccc_ec2_type_aaa     = var.ccc_ec2_type_aaa
  ccc_ec2_rbd_type_aaa = var.ccc_ec2_rbd_type_aaa
  ccc_ec2_rbd_size_aaa = var.ccc_ec2_rbd_size_aaa

  # Networking
  ccc_subnet_azs_aaa = var.ccc_subnet_azs_aaa

  # Networking (Module)
  aws_eip-ccc_ec2_aaa = module.networking.aws_eip-ccc_ec2_aaa
  aws_nis-ccc_ec2_aaa = module.networking.aws_nis-ccc_ec2_aaa
}