module "eks" {
  source = "../../module/eks"

<<<<<<< HEAD:apne2/cluster/main.tf

  name                    = "Jeewoong-k8s-infra"
  create_cluster          = true
=======
  name                    = "k8s-infra"
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116:apne2/eks/main.tf
  eks_version             = var.eks_version
  vpc_subnet_ids          = [data.terraform_remote_state.vpc.outputs.subnet_ids[0], data.terraform_remote_state.vpc.outputs.subnet_ids[1]]
  vpc_security_group_ids  = [data.terraform_remote_state.sg.outputs.eks_sg_id]
  vpc_public_access_cidrs = var.vpc_public_access_cidrs
}
