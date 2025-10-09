resource "kubernetes_deployment" "chase_deploy_demo" {
  metadata {
    name = "${var.resource_prefix}-chase-deploy"
    labels = {
      app = "${var.resource_prefix}-chase-me"
    }
    namespace = kubernetes_namespace.pipelines4all.metadata[0].name
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "${var.resource_prefix}-chase-me"
      }
    }

    template {
      metadata {
        labels = {
          app = "${var.resource_prefix}-chase-me"
        }
      }

      spec {
        container {
          image = "ghcr.io/clee231/pipeline4all-practice-24:latest"
          name  = "my-app"
          port {
            container_port = 3000
          }
        }
      }
    }
  }
}
