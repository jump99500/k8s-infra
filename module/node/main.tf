resource "aws_launch_configuration" "lc" {
  count = var.create_lc ? 1 : 0

  name_prefix          = format("${var.name}-%s-%s", "node", "lc")
  security_groups      = var.security_group_ids
  key_name             = var.key_name
  image_id             = var.ami_id
  instance_type        = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.node_profile.id
  user_data            = local.user_data
  root_block_device {
    encrypted   = var.volume_encrypted
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
}

resource "aws_autoscaling_group" "node" {
  count = var.create_asg ? 1 : 0

  name                 = format("${var.name}-%s-%s", "worker", "group")
  min_size             = var.min_size
  max_size             = var.max_size
  desired_capacity     = var.desired_capacity
  vpc_zone_identifier  = var.subnet_ids
  launch_configuration = aws_launch_configuration.lc[0].id
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
