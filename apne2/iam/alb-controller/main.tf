module "alb-controller" {
  source = "../../../module/iam/alb-controller"

  name      = "Jeewoong-k8s-infra"
  irsa_arn  = data.terraform_remote_state.irsa.outputs.irsa_arn
  eks_oidc  = data.terraform_remote_state.eks.outputs.eks_oidc
  sa_name   = "aws-load-balancer-controller"
<<<<<<< HEAD
  namespace = "kube-system"
}
=======
}
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116
