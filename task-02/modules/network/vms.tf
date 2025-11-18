resource "google_compute_network" "main" {
  name                    = "custom-network"
  auto_create_subnetworks = true
}