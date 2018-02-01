###########################################################
############### Create Support IAM Group ##################
###########################################################

## Create cscie40_support_group group with read only access to stuff
resource "aws_iam_group" "cscie40_support_group" {
  name = "cscie40_support_group"
}

resource "aws_iam_group_policy_attachment" "attach-ec2-read-only-access" {
  group = "${aws_iam_group.cscie40_support_group.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "attach-s3-read-only-access" {
  group = "${aws_iam_group.cscie40_support_group.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "attach-rds-read-only-access" {
  group = "${aws_iam_group.cscie40_support_group.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSReadOnlyAccess"
}