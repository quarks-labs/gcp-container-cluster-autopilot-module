
################################################################################
# CLUSTER AUTOPILOT
################################################################################


resource "google_container_cluster" "this" {
  name                     = var.name
  project                  = var.project
  location                 = try(var.region, "us-east1")
  network                  = try(var.network, "default")
  subnetwork               = try(var.subnetwork, "default")
  enable_l4_ilb_subsetting = try(var.enable_l4_ilb_subsetting, false)
  enable_autopilot         = try(var.enable_autopilot, true)
  deletion_protection      = try(var.deletion_protection, false)
  initial_node_count       = try(var.initial_node_count, 1)

  master_auth {
    client_certificate_config {
      issue_client_certificate = try(var.master_auth.client_certificate_config.issue_client_certificate, true)
    }
  }

  dynamic "fleet" {
    for_each = (var.fleet.enabled ? [1] : [])
    content {
      project = var.project
    }
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = try(var.ip_allocation_policy.cluster_secondary_range_name, "")
    services_secondary_range_name = try(var.ip_allocation_policy.services_secondary_range_name, "")
  }

  maintenance_policy {
    daily_maintenance_window {
      start_time = try(var.maintenance_policy.daily_maintenance_window.start_time, "03:00")
    }
  }
}



