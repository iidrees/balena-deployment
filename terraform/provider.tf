provider "google" { 
  credentials = "${file("./creds/devops-bb.json")}"
  project     = "${var.gcp_project}"
  region      = "${var.region}"
}