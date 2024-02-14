data "terraform_remote_state" "eks" {
  backend = "remote"

  config = {
    organization = "Suwoong-admin"

    workspaces = {
      name = "k8s-infra_apne2_eks"
    }
  }
<<<<<<< HEAD:apne2/cluster/aws-auth-cm/remote_state.tf
}
=======
}

>>>>>>> 948ac2adda2dec7db3cfea35f3b40c61ce254b91:apne2/eks/aws-auth-cm/remote_state.tf
