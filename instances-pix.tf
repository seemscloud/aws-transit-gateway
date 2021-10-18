module "instances-pix" {
  source = "./instances-pix"

  # Key Pair
  aaa_key_pair_aaa = aws_key_pair.aaa_key_pair_aaa.key_name

  # Instance
  aaa_ec2_aaa              = local.aaa_ec2_aaa
  aaa_ec2_count_per_az_aaa = var.aaa_ec2_count_per_az_aaa
  aaa_ec2_ami_aaa          = var.aaa_ec2_ami_aaa
  aaa_ec2_type_aaa         = var.aaa_ec2_type_aaa
  aaa_ec2_rbd_type_aaa     = var.aaa_ec2_rbd_type_aaa
  aaa_ec2_rbd_size_aaa     = var.aaa_ec2_rbd_size_aaa

  # Networking
  aaa_subnet_azs_aaa = var.aaa_subnet_azs_aaa

  # Networking (Module)
  aws_nis-aaa_ec2_aaa = module.networking.aws_nis-aaa_ec2_aaa
}