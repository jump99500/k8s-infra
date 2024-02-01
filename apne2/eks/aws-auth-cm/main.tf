resource "kubernetes_config_map" "aws-auth" {
  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }
<<<<<<< HEAD:apne2/cluster/aws-auth-cm/main.tf
  data = local.aws_auth_data
=======

  data = local.aws-auth-data
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116:apne2/eks/aws-auth-cm/main.tf
}
