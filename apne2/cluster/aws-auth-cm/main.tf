resource "kubernetes_config_map" "aws-auth" {
  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }

  data = local.aws_auth_data
}
