provider "kubernetes" {
  host     = "${google_container_cluster.terraform-demo-k8s-cluster.endpoint}"
  username = "${var.master_username}"
  password = "${var.master_password}"


   client_certificate     = "${base64decode(google_container_cluster.terraform-demo-k8s-cluster.master_auth.0.client_certificate)}"
   client_key             = "${base64decode(google_container_cluster.terraform-demo-k8s-cluster.master_auth.0.client_key)}"
   cluster_ca_certificate = "${base64decode(google_container_cluster.terraform-demo-k8s-cluster.master_auth.0.cluster_ca_certificate)}"
}

resource "kubernetes_replication_controller" "terraform_demo_pod" {
  metadata {
    name = "spring-petclinic-demo"

    labels {
      app  = "spring-petclinic"
    }
  }

  spec {
    replicas = 3

    selector = {
      app  = "spring-petclinic"

    }

    template {
      container {
         image = "gcr.io/google-samples/hello-app:2.0"
         name  = "hello-world-demo-example"
#         image = "hub.docker.com/r/jbrisbin/spring-petclinic:latest"
#         name = "spring-petclinic-docker"
        port {
          container_port = 8080
        }

        resources {
          requests {
            cpu    = "100m"
            memory = "100Mi"
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "terraform_demo_service" {
  metadata {
    name = "hello-world-demo"

    labels {
      app  = "hello-world"
    }
  }

  spec {
    selector {
      app  = "hello-world"
    }

    type = "LoadBalancer"

    port {
      port        = 80
      target_port = 8080
    }
  }
}

output "gke_lb_address" {
  value = "${kubernetes_service.terraform_demo_service.load_balancer_ingress.0.ip}"
}