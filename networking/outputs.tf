# Pix
output "aws_nis-aaa_ec2_aaa" {
  value = aws_network_interface.aaa_ec2_aaa.*.id
}

# Het
output "aws_nis-bbb_ec2_aaa" {
  value = aws_network_interface.bbb_ec2_aaa.*.id
}

# Bastion
output "aws_eip-ccc_ec2_aaa" {
  value = aws_eip.ccc_ec2_aaa.*.id
}

output "aws_nis-ccc_ec2_aaa" {
  value = aws_network_interface.ccc_ec2_aaa.*.id
}

# Jenkins
output "aws_nis-ccc_ec2_bbb" {
  value = aws_network_interface.ccc_ec2_bbb.*.id
}