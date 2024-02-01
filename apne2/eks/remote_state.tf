data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "Suwoong-admin"

    workspaces = {
      name = "k8s-infra_apne2_network_vpc"
    }
  }
}

<<<<<<< HEAD

=======
>>>>>>> 250d75f3b44499071d63549e3e6d6faccd66ee4c
data "terraform_remote_state" "sg" {
  backend = "remote"

  config = {
    organization = "Suwoong-admin"

    workspaces = {
      name = "k8s-infra_apne2_network_sg"
    }
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 250d75f3b44499071d63549e3e6d6faccd66ee4c
