resource "google_container_cluster" "gke-cluster" {
  name               = "${var.cluster_name}"
  network            = "default"
  location           = "${var.region}"
  initial_node_count = 1
}