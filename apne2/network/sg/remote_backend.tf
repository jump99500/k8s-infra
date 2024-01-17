terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "suwoong-admin"

    workspaces {
      name = "k8s-infra_apne2_network_sg"
    }
  }
}
