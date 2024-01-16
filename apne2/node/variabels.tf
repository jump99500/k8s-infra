variable "ami_id" {
  default = "ami-0a2f6f6ce09a9d70d"
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
