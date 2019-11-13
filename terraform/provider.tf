# The GCP provider is used to communicate with GCP in order
# to have access to GKE before the cluster is created
provider "google" { 
  credentials = "${file("./creds/devops-bb.json")}"
  project     = "${var.gcp_project}"
  region      = "${var.region}"
}