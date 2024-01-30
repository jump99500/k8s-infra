output "eks_id" {
  value = aws_eks_cluster.eks.id
}

output "eks_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "eks_ca_certificate" {
  value = aws_eks_cluster.eks.certificate_authority.data
}

output "eks_oidc" {
  value = aws_eks_cluster.eks.identity.oidc.issuer
}
