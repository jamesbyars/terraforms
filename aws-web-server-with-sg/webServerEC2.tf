###########################################################
################# Create EC2 Web Server ###################
###########################################################

resource "aws_instance" "cscie49_ec2_linux" {
  count = 1
  ami = "ami-97785bed"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.cscie49_key_pair.key_name}"
  security_groups = [
    "${aws_security_group.cscie49_linux_webserver_sg.name}"]
  tags {
    Name = "Lab1"
  }
  user_data = "${file("user-data.sh")}"
  root_block_device {
    delete_on_termination = true
    volume_size = "8"
  }
  ebs_block_device {
    device_name = "/dev/sdg"
    delete_on_termination = true
    encrypted = true
    volume_size = "8"
  }
}