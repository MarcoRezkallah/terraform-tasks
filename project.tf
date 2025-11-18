module "vms" {
  source     = "./modules/vms"
  region     = "us-central1"
  project_id = "my-project-id"
  vms = {
    bastion = {
      machine_type = "e2-small"
      zone         = "us-central1-b"
      image        = "debian-cloud/debian-11"
      disk_size    = 20
      public_ip    = true
    }
    nginx_server = {
      disk_size = 15
      public_ip = true
    }
    backend_server = {
      machine_type = "e2-medium"
      zone         = "us-central1-c"
      disk_size    = 25
      public_ip    = false
    }
    database_server = {
      machine_type = "e2-standard-4"
      zone         = "us-central1-a"
      image        = "debian-cloud/debian-10"
      disk_size    = 50
      public_ip    = false
    }
  }
}
