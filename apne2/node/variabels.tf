variable "ami_id" {
  default = "ami-08c0e813db8f62343"
}

variable "instance_type" {
  default = "t3.small"
}

variable "volume_size" {
  default = 8
}

variable "volume_type" {
  default = "gp3"
}

variable "health_check_type" {
  default = "EC2"
}
