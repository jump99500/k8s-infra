provider "aws" {
  allowed_account_ids = var.account_id
  region              = var.region
}

data "aws_caller_identity" "current" {

}

variable "account_id" {
  default = ["985522651362"]
}

variable "region" {
  default = "ap-northeast-2"
}
