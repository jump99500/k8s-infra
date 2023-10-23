variable "name" {
  type    = string
  default = ""
}

variable "create_lc" {
  type    = bool
  default = true
}

variable "create_asg" {
  type    = bool
  default = true
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

variable "cluster_ca" {
  type    = string
  default = ""
}

variable "apiserver_endpoint" {
  type    = string
  default = ""
}
