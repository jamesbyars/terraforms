###########################################################
################ Create Admin IAM User ####################
###########################################################

## Create users
resource "aws_iam_user" "cscie49_admin" {
  name = "cscie49_admin"
}

resource "aws_iam_group_membership" "cscie49_admin_group" {
  name = "cscie49_admin_group-membership"

  users = [
    "${aws_iam_user.cscie49_admin.name}"
  ]

  group = "${aws_iam_group.cscie49_admin_group.name}"
}