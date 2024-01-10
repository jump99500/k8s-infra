locals {
  region          = "ap-northeast-2"  # AWS region 선택 : VPC와 동일하게
  cluster_name    = "Jeewoong-cluster" # EKS 이름 작성
  cluster_version = "1.26" # Kubernetes version
  access_key      = var.accesskey
  secret_key      = var.secretkey  
  allowed_account_ids = ["144149479695"]
  environment     = "stage" # tag에 집어넣을 환경명

  # AWS EKS Managed node group 으로 node 생성
  eks_managed_node_groups = [
    {
      ami_type = "AL2_x86_64"
      node_type      = "default"
      count          = 1
      capacity_type  = "ON_DEMAND"
      instance_types = ["t3.medium"]
      disk_size      = 40
      taint          = false
    }
  ]
  
  # 권한 유저
  aws_auth_users_list = [
    {
      userarn  = "arn:aws:iam::144149479695:user/jeewoong.shin@bespinglobal.com"
      username = "jeewoong.shin@bespinglobal.com"
      groups   = ["system:masters"]
    }
  ]
}
