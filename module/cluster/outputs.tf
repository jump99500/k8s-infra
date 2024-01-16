output "eks_id" {
  value = concat(aws_eks_cluster.eks[*].id, [""])[0]
}

output "eks_endpoint" {
  value = concat(aws_eks_cluster.eks[*].endpoint, [""])[0]
}

output "eks_ca_certificate" {
  value = concat(aws_eks_cluster.eks[*].certificate_authority[0].data, [""])[0]
}

output "eks_oidc" {
  value = concat(aws_eks_cluster.eks[*].identity[0].oidc[0].issuer, [""])[0]
}
