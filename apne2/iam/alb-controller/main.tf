module "alb-controller" {
  source = "../../../module/iam/alb-controller"

  name      = "k8s-infra"
  irsa_arn  = data.terraform_remote_state.irsa.outputs.irsa_arn
  eks_oidc  = data.terraform_remote_state.cluster.outputs.eks_oidc
  sa_name   = "aws-load-balancer-controller"
}
