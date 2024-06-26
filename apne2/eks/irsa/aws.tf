provider "aws" {
  allowed_account_ids = var.account_id
  region              = var.region
}

variable "account_id" {
  default = ["144149479695"]
}

variable "region" {
  default = "ap-northeast-2"
}

variable "profile" {
  default = "Suwoong-admin"
}