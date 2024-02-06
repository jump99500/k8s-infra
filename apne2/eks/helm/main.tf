resource "helm_release" "metrics-server" {
  name       = "metrics-server"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "metrics-server"
  version    = "6.9.1"

  set {
    name  = "apiService.create"
    value = "true"
  }
}
