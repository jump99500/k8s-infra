terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sangun-admin"

    workspaces {
      name = "k8s-infra_apne2_network_vpc"
    }
  }
}
  