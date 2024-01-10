locals {
  common_tags = {
    Environment = var.environment
    managed_by  = "Jeewoong"
    region      = var.region
  }
  default_cluster_endpoint_public_access_cidrs = [
    "0.0.0.0/0" # all
  ]
}