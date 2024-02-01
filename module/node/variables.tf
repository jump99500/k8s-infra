variable "name" {
  type    = string
  default = ""
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}

variable "key_name" {
  type    = string
  default = ""
}

variable "ami_id" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = ""
}

variable "user_data" {
  type    = string
  default = ""
}

variable "volume_encrypted" {
  type    = bool
  default = true
}

variable "volume_size" {
  type    = string
  default = ""
}

variable "volume_type" {
  type    = string
  default = ""
}

variable "min_size" {
  type    = string
  default = ""
}

variable "max_size" {
  type    = string
  default = ""
}

variable "desired_capacity" {
  type    = string
  default = ""
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "health_check_type" {
  type    = string
  default = ""
}

variable "eks_name" {
  type    = string
  default = ""
}

variable "eks_ca" {
  type    = string
  default = ""
}

variable "apiserver_endpoint" {
  type    = string
  default = ""
}

variable "kms_key_id" {
  type    = string
<<<<<<< HEAD
  default = "arn:aws:kms:ap-northeast-2:144149479695:key/8d753568-ea99-490b-b1d3-4aa401b6d044"
}
=======
  default = "arn:aws:kms:ap-northeast-2:985522651362:key/9fdfae90-2be7-44dd-892d-eb6720c064fc"
}
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116
