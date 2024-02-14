resource "aws_eks_addon" "addons" {
  for_each = local.addon_list

<<<<<<< HEAD:apne2/cluster/addons/main.tf
=======
  cluster_name = data.terraform_remote_state.eks.outputs.eks_id
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116:apne2/eks/addons/main.tf

  cluster_name = data.terraform_remote_state.cluster.outputs.eks_id
  addon_name                  = each.key
  addon_version               = lookup(each.value, "addon_version", null)
  resolve_conflicts_on_update = lookup(each.value, "resolve_conflicts_on_update", null)
  service_account_role_arn    = lookup(each.value, "service_account_role_arn", null)
}
