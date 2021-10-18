output "aws_eip-ccc_ec2_aaa" {
  value = aws_eip.ccc_ec2_aaa.*.id
}

output "aws_nis-ccc_ec2_aaa" {
  value = aws_network_interface.ccc_ec2_aaa.*.id
}