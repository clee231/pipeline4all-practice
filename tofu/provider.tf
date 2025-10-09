# Kubernetes Provider source and version being used
terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.38.0"
    }
  }
}


# Configure the Kubernetes Provider
provider "kubernetes" {}
