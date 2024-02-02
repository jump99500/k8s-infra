terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sangun-admin"

    workspaces {
      name = "manager_apne2"
    }
  }
}
