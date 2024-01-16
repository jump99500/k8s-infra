data "terraform_remote_state" "cluster" {
  backend = "remote"

  config = {
    organization = "sangun-admin"

    workspaces = {
      name = "k8s-infra_apne2_cluster"
    }
  }
}

data "terraform_remote_state" "irsa" {
  backend = "remote"

  config = {
    organization = "sangun-admin"

    workspaces = {
      name = "k8s-infra_apne2_cluster_irsa"
    }
  }
}
