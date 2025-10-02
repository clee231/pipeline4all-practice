resource "kubernetes_namespace" "pipelines4all" {
  metadata {
    name = "${var.resource_prefix}-chase-demo"
  }
}
