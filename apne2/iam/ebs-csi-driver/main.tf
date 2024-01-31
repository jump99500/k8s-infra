module "ebs-csi-driver" {
  source = "../../../module/iam/ebs-csi-driver"

  name      = "k8s-infra"
  irsa_arn  = data.terraform_remote_state.irsa.outputs.irsa_arn
  eks_oidc  = data.terraform_remote_state.cluster.outputs.eks_oidc
  sa_name   = "ebs-csi-controller-sa"
}
