variable "region" {
  type = string
  default = "us-central1"
}

variable "project_id" {
  type = string
  default = "my-project-id"
}

variable "vms" {
  type = map(object({
    machine_type = optional(string, "e2-medium")
    zone         = optional(string, "us-central1-a")
    image        = optional(string, "debian-cloud/debian-10")
    disk_size    = number
    public_ip    = optional(bool, false)
  }))
}