provider "google" {
    credentials = "${var.gcp_service_key}"
    project     = "${var.demo_gcp_project_id}"
    region      = "${var.cluster_zone}"
}

resource "google_container_cluster" "terraform-demo-k8s-cluster" {
    name                      = "${var.cluster_name}"
    zone                      = "${var.cluster_zone}"
    initial_node_count        = "${var.initial_node_count}"

    master_auth {
        username = "${var.master_username}"
        password = "${var.master_password}"
    }
    node_config {
        machine_type = "${var.node_machine_type}"
        disk_size_gb = "${var.node_disk_size}"
        oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring"
        ]
    }
    enable_legacy_abac = true

    // Wait for the GCE LB controller to cleanup the resources.
    provisioner "local-exec" {
        when    = "destroy"
        command = "sleep 90"
    }
}
