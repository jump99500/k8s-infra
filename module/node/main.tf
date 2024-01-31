resource "aws_launch_template" "lt" {
  name_prefix            = format("${var.name}-%s-%s", "node", "lt")
  image_id               = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids
  user_data              = local.user_data

  iam_instance_profile {
    arn = aws_iam_instance_profile.node_instance_profile.arn
  }

  block_device_mappings {
    device_name = format("${var.name}-%s-%s", "node", "ebs")

    ebs {
      encrypted   = var.volume_encrypted
      kms_key_id  = var.kms_key_id
      volume_size = var.volume_size
      volume_type = var.volume_type
    }
  }
}

resource "aws_autoscaling_group" "node" {
  name                 = format("${var.name}-%s-%s", "worker", "group")
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
  vpc_zone_identifier  = var.subnet_ids
  launch_configuration = aws_launch_template.lt.id
  health_check_type    = var.health_check_type

  tag {
    key                 = "Name"
    value               = format("${var.name}-%s-%s", "worker", "group")
    propagate_at_launch = true
  }

  tag {
    key                 = "kubernetes.io/cluster/${var.eks_name}"
    value               = "owned"
    propagate_at_launch = true
  }
}
