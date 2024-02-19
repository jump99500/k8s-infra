variable "name" {
  type    = string
  default = ""
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "ssh_port" {
  type    = string
  default = ""
}

variable "my_ip_1" {
  type    = list(string)
  default = []
}

variable "my_ip_2" {
  type    = list(string)
  default = []
}