provider "aws" {
  allowed_account_ids = var.account_id
  region              = var.region
<<<<<<< HEAD:apne2/cluster/aws-auth-cm/aws.tf
  #profile             = var.profile
}

data "aws_caller_identity" "current" {

=======
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116:apne2/eks/aws-auth-cm/aws.tf
}


variable "account_id" {
  default = ["144149479695"]
}

variable "region" {
  default = "ap-northeast-2"
}
<<<<<<< HEAD:apne2/cluster/aws-auth-cm/aws.tf

variable "profile" {
  default = "Suwoong-admin"
}
=======
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116:apne2/eks/aws-auth-cm/aws.tf
