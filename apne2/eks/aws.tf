provider "aws" {
  allowed_account_ids = var.account_id
  region              = var.region
<<<<<<< HEAD
}

=======
  #profile             = var.profile
}

#data "aws_caller_identity" "current" {}


>>>>>>> 250d75f3b44499071d63549e3e6d6faccd66ee4c
variable "account_id" {
  default = ["144149479695"]
}

<<<<<<< HEAD
=======

>>>>>>> 250d75f3b44499071d63549e3e6d6faccd66ee4c
variable "region" {
  default = "ap-northeast-2"
}

variable "profile" {
  default = "Suwoong-admin"
<<<<<<< HEAD
}

=======
}
>>>>>>> 250d75f3b44499071d63549e3e6d6faccd66ee4c
