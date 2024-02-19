module "sg" {
  source = "../../../module/network/sg"
  name     = "Jeewoong-k8s-infra"
  vpc_id   = data.terraform_remote_state.vpc.outputs.vpc_id
  ssh_port = var.ssh_port
  my_ip_1    = var.my_ip_1
}


module "sg_2" {
  source = "../../../module/network/sg"
  name     = "Jeewoong-k8s-infra"
  vpc_id   = data.terraform_remote_state.vpc.outputs.vpc_id
  ssh_port = var.ssh_port
  my_ip_2    = var.my_ip_2
}