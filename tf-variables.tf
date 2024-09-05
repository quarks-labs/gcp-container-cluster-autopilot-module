variable "region" {
  type        = string
  description = "GCP Region"
}

variable "initial_node_count" {
  type = number
  description = "Initial node Pool"
}

variable "name" {
  type        = string
  description = "Name of GCP Network"
}

variable "project" {
  type        = string
  description = "Name of GCP Network"
}

variable "network" {
  type        = any
  description = "network"
}

variable "subnetwork" {
  type        = any
  description = "List of GCP Subnetworks"
}

variable "enable_l4_ilb_subsetting" {
  type        = bool
  description = "Enable l4_ilb support"
  default     = false
}

variable "maintenance_policy" {
  type = object({
    daily_maintenance_window = object({
      start_time = string
    })
  })
  description = "GKE Maintence policy"
}

variable "enable_autopilot" {
  type    = bool
  default = false
}

variable "deletion_protection" {
  type = bool
  default = false
}

variable "ip_allocation_policy" {
  type = object({
    cluster_secondary_range_name  = string
    services_secondary_range_name = string
  })
  description = "Allocation ip Policy"
}

variable "master_auth" {
  type = object({
    client_certificate_config = object({
      issue_client_certificate = bool
    })
  })
  description = "Master auth configuration"
  default = {
    client_certificate_config = {
      issue_client_certificate = true
    }
  }
}

variable "fleet" {
  type = object({
    project = string
    enabled = bool
  })
  default = {
    project = ""
    enabled = false
  }
}

