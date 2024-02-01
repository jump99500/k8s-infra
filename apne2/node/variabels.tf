variable "ami_id" {
<<<<<<< HEAD
  default = "ami-0e81617c446938561"
=======
  default = "ami-0b909ec1142613def"
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116
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