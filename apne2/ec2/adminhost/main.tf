module "adminhost" {
  source = "../../../module/ec2/adminhost"

  name                   = "Jeewoong-k8s-infra"
  create_adminhost       = true
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = "aws_k8s_test"
  subnet_id              = data.terraform_remote_state.vpc.outputs.subnet_ids[0]
  vpc_security_group_ids = [data.terraform_remote_state.sg.outputs.admin_sg_id]
  user_data_base64       = base64encode(local.user_data)

  root_volume_size = "8"
  root_volume_type = "gp3"
}
