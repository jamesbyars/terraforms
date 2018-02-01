###########################################################
################# Create Web Server SG ####################
###########################################################

resource "aws_security_group" "cscie49_linux_webserver_sg" {
  name = "cscie49_linux_webserver_sg"
  description = "Linux Web Server Security Group"
  ingress {
    description = "SSH"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name = "Linux Web Server Security Group"
  }
}

resource "aws_security_group" "cscie49_windows_webserver_sg" {
  name = "cscie49_windows_webserver_sg"
  description = "Windows Web Server Security Group"
  ingress {
    description = "RDP"
    protocol    = "tcp"
    from_port   = 3389
    to_port     = 3389
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags {
    Name = "Windows Web Server Security Group"
  }
}