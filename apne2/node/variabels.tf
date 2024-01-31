variable "ami_id" {
  default = "ami-0e81617c446938561"
}

variable "instance_type" {
  default = "t3.small"
}

variable "volume_size" {
  default = 4
}

variable "volume_type" {
  default = "gp3"
}

variable "health_check_type" {
  default = "EC2"
}
