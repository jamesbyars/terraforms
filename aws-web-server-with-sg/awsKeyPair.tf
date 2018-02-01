###########################################################
############### Upload our private key ####################
###########################################################
resource "aws_key_pair" "cscie49_key_pair" {
  key_name = "cscie49_key_pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}