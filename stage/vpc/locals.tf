locals { 
  region          = "ap-northeast-2" # AWS region 선택
  vpc_name        = "Jeewoong-Terraform-VPC" # VPC 이름
  access_key      = var.access_key
  secret_key      = var.secret_key  
  allowed_account_ids = "144149479695"
  environment     = "stage" # tag에 집어넣을 환경명
  
  vpc_cidr_block  = "10.0.0.0/16" # VPC CIDR block
  azs             = ["ap-northeast-2a", "ap-northeast-2c"] # AWS Avaiability Zones
  private_subnets = ["10.0.128.0/20", "10.0.144.0/20"] # Private Subnets CIDR
  public_subnets  = ["10.0.0.0/20", "10.0.16.0/20",] # Public Subnets CIDR
}
