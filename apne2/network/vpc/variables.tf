variable "vpc_cidr_block" {
  default = "10.2.0.0/16"
}

variable "enable_dns_hostnames" {
  default = true
}

variable "vpc_tags" {
  default = {
    "Name" = "k8s-infra-vpc"
  }
}

variable "create_pub_igw" {
  type    = bool
  default = true
}

variable "create_pub_rt" {
  type    = bool
  default = true
}

variable "azs" {
  default = ["ap-northeast-2a", "ap-northeast-2c"]
}

variable "sub_cidr_block" {
  default = {
    public = ["10.2.1.0/24", "10.2.2.0/24"]
  }
}
 