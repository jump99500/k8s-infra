locals {
  bootstrap = [
    {
      rolearn  = "arn:aws:iam::144149479695:role/Jeewoong-k8s-infra-node-role"
      username = "system:node:{{EC2PrivateDNSName}}"
      groups = [
        "system:bootstrappers",
        "system:nodes"
      ]
    }
  ]

  mapRoles = [
    {
      rolearn  = "arn:aws:iam::144149479695:role/Jeewoong-k8s-infra-admin-role"
      username = "Jeewoong-k8s-infra-admin-role"
      groups   = ["system:masters"]
    }
  ]

  aws_auth_data = {
    mapRoles = yamlencode(concat(local.bootstrap, local.mapRoles))
  }
}
