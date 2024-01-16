resource "aws_iam_instance_profile" "admin_profile" {
  name = format("${var.name}-%s-%s", "admin", "profile")
  role = aws_iam_role.admin_role.name
}

resource "aws_iam_role_policy_attachment" "admin_role" {
  role       = aws_iam_role.admin_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

data "aws_iam_policy_document" "policy_trust_relationships" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "admin_role" {
  name               = format("${var.name}-%s-%s", "admin", "role")
  assume_role_policy = data.aws_iam_policy_document.policy_trust_relationships.json

  tags = {
    Name = format("${var.name}-%s-%s", "admin", "role")
  }
}

