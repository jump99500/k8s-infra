variable "name" {
  type    = string
  default = ""
}

variable "create_vpc" {
  type    = bool
  default = true
}

variable "vpc_cidr_block" {
  type    = string
  default = ""
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "vpc_tags" {
  type    = map(string)
  default = {}
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
  type    = list(string)
  default = []
}

variable "pub_subnet" {
  type    = list(string)
  default = []
}
