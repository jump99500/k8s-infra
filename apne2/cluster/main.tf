module "eks" {
  source = "../../module/cluster"

  name                    = "k8s-infra"
  create_cluster          = true
  eks_version             = var.eks_version
  vpc_subnet_ids          = [data.terraform_remote_state.vpc.outputs.subnet_ids[0], data.terraform_remote_state.vpc.outputs.subnet_ids[1]]
  vpc_security_group_ids  = [data.terraform_remote_state.sg.outputs.eks_sg_id]
  vpc_public_access_cidrs = var.vpc_public_access_cidrs
}
