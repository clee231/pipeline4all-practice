data "kubernetes_namespace" "example" {
  metadata {
    name = "default"
  }
}

output "namespace_uuid" {
 value = data.kubernetes_namespace.example.metadata[0].uid
}

