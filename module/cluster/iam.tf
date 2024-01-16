resource "aws_iam_role_policy_attachment" "eks_role_policy" {
  role       = aws_iam_role.eks_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

data "aws_iam_policy_document" "policy_trust_relationships" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "eks_role" {
  name               = format("${var.name}-%s-%s", "eks", "role")
  assume_role_policy = data.aws_iam_policy_document.policy_trust_relationships.json

  tags = {
    Name = format("${var.name}-%s-%s", "eks", "role")
  }
}
