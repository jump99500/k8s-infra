locals {

  user_data = <<-EOF
  #!/bin/bash -xe

  B64_CLUSTER_CA=${var.cluster_ca}
  APISERVER_ENDPOINT=${var.apiserver_endpoint}
  /etc/eks/bootstrap.sh ${var.eks_name} --b64-cluster-ca $B64_CLUSTER_CA --apiserver-endpoint $APISERVER_ENDPOINT
  EOF
}
