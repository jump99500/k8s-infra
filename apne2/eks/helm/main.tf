resource "helm_release" "metrics-server" {
  name       = "metrics-server"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metrics-server"
	namespace  = "kube-system"
  version    = "6.9.1"

  set {
    name  = "apiService.create"
    value = "true"
  }
}
