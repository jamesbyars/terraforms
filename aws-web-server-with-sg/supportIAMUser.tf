###########################################################
############### Create Support IAM User ###################
###########################################################

resource "aws_iam_user" "cscie49_support" {
  name = "cscie49_support"
}


resource "aws_iam_group_membership" "cscie49_support_group" {
  name = "cscie49_support_group-membership"

  users = [
    "${aws_iam_user.cscie49_support.name}"
  ]

  group = "${aws_iam_group.cscie40_support_group.name}"
}