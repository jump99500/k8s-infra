module "adminhost" {
  source = "../../../module/ec2/admin"

<<<<<<< HEAD:apne2/ec2/adminhost/main.tf
  name                   = "Jeewoong-k8s-infra"
  create_adminhost       = true
=======
  name                   = "k8s-infra"
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116:apne2/ec2/admin/main.tf
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = "jeewong-eks-studykey"
  subnet_id              = data.terraform_remote_state.vpc.outputs.subnet_ids[0]
  vpc_security_group_ids = [data.terraform_remote_state.sg.outputs.admin_sg_id]
  user_data_base64       = base64encode(local.user_data)

  root_volume_size = "8"
  root_volume_type = "gp3"
}
