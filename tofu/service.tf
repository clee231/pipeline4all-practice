resource "kubernetes_service" "chase_service_demo" {
  metadata {
    name      = "${var.resource_prefix}-chase-service"
    namespace = kubernetes_namespace.pipelines4all.metadata[0].name
  }
  spec {
    selector = {
      app = kubernetes_deployment.chase_deploy_demo.metadata[0].labels.app
    }
    port {
      port        = 80
      target_port = 3000
    }

    type = "NodePort"
  }
}
