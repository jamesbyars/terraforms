resource "aws_s3_bucket" "s3bucket" {
  bucket = "tf-test-bucket-0099"
  acl    = "private"
}