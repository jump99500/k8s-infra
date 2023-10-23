variable "eks_version" {
  default = "1.25"
}

variable "vpc_public_access_cidrs" {
  default = ["0.0.0.0/0"]
}
