###########################################################
############## Output Some Helpful info ###################
###########################################################

output "aws_key_pair" {
  value = ["${aws_key_pair.cscie49_key_pair.key_name}"]
}

output "student_dns_addresses" {
  value = ["${aws_instance.cscie49_ec2_linux.*.public_dns}"]
}

output "cscie49-eip" {
  value = ["${aws_eip.cscie49-eip.public_ip}"]
}