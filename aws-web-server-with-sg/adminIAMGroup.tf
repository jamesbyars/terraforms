###########################################################
############### Create Admin IAM Group ####################
###########################################################

## Create cscie49_admin_group group with full access to stuff
resource "aws_iam_group" "cscie49_admin_group" {
  name = "cscie49_admin_group"
}

resource "aws_iam_group_policy_attachment" "attach-ec2-full-access" {
  group = "${aws_iam_group.cscie49_admin_group.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "attach-s3-full-access" {
  group = "${aws_iam_group.cscie49_admin_group.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "attach-rds-full-access" {
  group = "${aws_iam_group.cscie49_admin_group.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}