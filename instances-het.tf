module "instances-het" {
  source = "./instances-het"

  # Key Pair
  aaa_key_pair_aaa = aws_key_pair.aaa_key_pair_aaa.key_name

  # Instance
  bbb_ec2_aaa              = local.bbb_ec2_aaa
  bbb_ec2_count_per_az_aaa = var.bbb_ec2_count_per_az_aaa
  bbb_ec2_ami_aaa          = var.bbb_ec2_ami_aaa
  bbb_ec2_type_aaa         = var.bbb_ec2_type_aaa
  bbb_ec2_rbd_type_aaa     = var.bbb_ec2_rbd_type_aaa
  bbb_ec2_rbd_size_aaa     = var.bbb_ec2_rbd_size_aaa

  # Networking
  bbb_subnet_azs_aaa = var.bbb_subnet_azs_aaa

  # Networking (Module)
  aws_nis-bbb_ec2_aaa = module.networking.aws_nis-bbb_ec2_aaa
}