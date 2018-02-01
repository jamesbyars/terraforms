###########################################################
################# Create EIP For EC2 ######################
###########################################################

resource "aws_eip" "cscie49-eip" {
  instance = "${aws_instance.cscie49_ec2_linux.id}"
  vpc      = false
  tags {
    Name = "CSCI E-49 Elastic IP"
  }
}