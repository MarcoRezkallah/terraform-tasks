module "vms" {
  source     = "./modules/vms"
  region     = "us-central1"
  project_id = "my-project-id"
}

module "vpc" {
  source     = "./modules/network"
  region     = "us-central1"
  project_id = "my-project-id"
}