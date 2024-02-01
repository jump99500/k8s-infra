locals {
  node = [
    {
      rolearn  = "arn:aws:iam::144149479695:role/Jeewoong-k8s-infra-node-role"
      username = "system:node:{{EC2PrivateDNSName}}"
      groups = [
        "system:bootstrappers",
        "system:nodes"
      ]
    }
  ]
<<<<<<< HEAD:apne2/cluster/aws-auth-cm/locals.tf
 
  mapRoles = [
=======

  adminrole = [
>>>>>>> a429bfe93d0e15b5678285f77fe7754473475116:apne2/eks/aws-auth-cm/locals.tf
    {
      rolearn  = "arn:aws:iam::144149479695:role/Jeewoong-k8s-infra-admin-role"
      username = "Jeewoong-k8s-infra-admin-role"
      groups   = ["system:masters"]
    }
  ]

  aws-auth-data = {
    mapRoles = yamlencode(concat(local.node, local.adminrole))
  }
}
