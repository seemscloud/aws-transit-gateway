module "jenkins" {
  source = "./jenkins"

  # Key Pair
  aaa_key_pair_aaa = aws_key_pair.aaa_key_pair_aaa.key_name

  # Instance
  ccc_ec2_bbb          = local.ccc_ec2_bbb
  ccc_ec2_ami_bbb      = var.ccc_ec2_ami_bbb
  ccc_ec2_type_bbb     = var.ccc_ec2_type_bbb
  ccc_ec2_rbd_type_bbb = var.ccc_ec2_rbd_type_bbb
  ccc_ec2_rbd_size_bbb = var.ccc_ec2_rbd_size_bbb

  # Networking
  ccc_subnet_azs_bbb = var.ccc_subnet_azs_bbb

  # Networking (Module)
  aws_nis-ccc_ec2_bbb = module.networking.aws_nis-ccc_ec2_bbb
}