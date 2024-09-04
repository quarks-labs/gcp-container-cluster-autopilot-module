################################################################################
# VARIABLES LOCAL
################################################################################

locals {
  name    = "quarks-labs"
  region  = "us-east1"
  project = "quarks-labs"
}

################################################################################
# NETWORK
################################################################################


module "network" {
  source                  = "git::https://github.com/quarks-labs/gcp-network-module.git?ref=0.0.1"
  region                  = local.region
  name                    = local.name
  project                 = local.project
  auto_create_subnetworks = true

  subnetworks = [{
    name                     = "default-01"
    region                   = "us-east1"
    ip_cidr_range            = "10.1.0.0/16"
    private_ip_google_access = false
    nat = {
      nat_ip_allocate_option             = "MANUAL_ONLY"
      source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
    }
    secondary_ip_ranges = [
      {
        range_name    = "primary"
        ip_cidr_range = "10.2.32.0/20"
      },
      {
        range_name    = "secondary"
        ip_cidr_range = "10.2.64.0/20"
      }
    ]
    }
  ]
}

################################################################################
# GKE
################################################################################


module "gke" {
  source              = "../.."
  region              = local.region
  name                = local.name
  project             = local.project
  network             = module.network.network_self_link
  subnetwork          = module.network.subnetwork_self_link[0]
  ip_allocation_policy = {
    cluster_secondary_range_name  = tostring([for ips in module.network.subnetwork_secondary_ip_ranges : ips][0][0])
    services_secondary_range_name = tostring([for ips in module.network.subnetwork_secondary_ip_ranges : ips][0][1])
  }
  maintenance_policy = {
    daily_maintenance_window = {
      start_time = "03:00"
    }
  }
  depends_on = [module.network]
}

data "google_client_config" "provider" {}