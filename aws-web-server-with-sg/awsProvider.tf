# Configure the AWS Provider
## Use us-east-1 because the ami I'm expecting is there, and
## AMI's don't exist across regions.

variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}