data "terraform_remote_state" "cluster" {
  backend = "remote"

  config = {
    organization = "Suwoong-admin"

    workspaces = {
      name = "k8s-infra_apne2_cluster"
    }
  }
}
