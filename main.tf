provider "google" {
  project = "quick-assesment" 
  region  = "us-central1"      
}
resource "google_compute_network" "assessment-vpc" {
  name                    = "assessment-vpc"
  auto_create_subnetworks  = false  # Setting this to false means we will create custom subnets
  routing_mode             = "GLOBAL"  # Regional routing mode for better control
}
