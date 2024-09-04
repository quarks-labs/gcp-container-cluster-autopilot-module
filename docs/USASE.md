## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.24.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_container_cluster.this](https://registry.terraform.io/providers/hashicorp/google/5.24.0/docs/resources/container_cluster) | resource |       

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_autopilot"></a> [enable\_autopilot](#input\_enable\_autopilot) | n/a | `bool` | `false` | no |
| <a name="input_enable_l4_ilb_subsetting"></a> [enable\_l4\_ilb\_subsetting](#input\_enable\_l4\_ilb\_subsetting) | Enable l4\_ilb support | `bool` | 
`false` | no |
| <a name="input_ip_allocation_policy"></a> [ip\_allocation\_policy](#input\_ip\_allocation\_policy) | Allocation ip Policy | <pre>object({<br>    cluster_secondary_range_name  = string<br>    services_secondary_range_name = string<br>  })</pre> | n/a | yes |
| <a name="input_maintenance_policy"></a> [maintenance\_policy](#input\_maintenance\_policy) | GKE Maintence policy | <pre>object({<br>    daily_maintenance_window = object({<br>      start_time = string<br>    })<br>  })</pre> | n/a | yes |
| <a name="input_master_auth"></a> [master\_auth](#input\_master\_auth) | Master auth configuration | <pre>object({<br>    client_certificate_config = 
object({<br>      issue_client_certificate = bool<br>    })<br>  })</pre> | <pre>{<br>  "client_certificate_config": {<br>    "issue_client_certificate": true<br>  }<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name of GCP Network | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | network | `any` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name of GCP Network | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | GCP Region | `string` | n/a | yes |
| <a name="input_subnetwork"></a> [subnetwork](#input\_subnetwork) | List of GCP Subnetworks | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_addons_config"></a> [addons\_config](#output\_addons\_config) | The configuration of cluster addons |
| <a name="output_allow_net_admin"></a> [allow\_net\_admin](#output\_allow\_net\_admin) | Indicates whether network administration is allowed for the cluster |
| <a name="output_cluster_ipv4_cidr"></a> [cluster\_ipv4\_cidr](#output\_cluster\_ipv4\_cidr) | The IPv4 CIDR of the cluster |
| <a name="output_datapath_provider"></a> [datapath\_provider](#output\_datapath\_provider) | The datapath provider of the cluster |
| <a name="output_default_max_pods_per_node"></a> [default\_max\_pods\_per\_node](#output\_default\_max\_pods\_per\_node) | The default maximum number 
of pods per node |
| <a name="output_deletion_protection"></a> [deletion\_protection](#output\_deletion\_protection) | Indicates whether deletion protection is enabled for the cluster |
| <a name="output_description"></a> [description](#output\_description) | The description of the cluster |
| <a name="output_enable_autopilot"></a> [enable\_autopilot](#output\_enable\_autopilot) | Indicates whether Autopilot is enabled for the cluster |    
| <a name="output_enable_cilium_clusterwide_network_policy"></a> [enable\_cilium\_clusterwide\_network\_policy](#output\_enable\_cilium\_clusterwide\_network\_policy) | Indicates whether Cilium clusterwide network policy is enabled |
| <a name="output_enable_intranode_visibility"></a> [enable\_intranode\_visibility](#output\_enable\_intranode\_visibility) | Indicates whether intranode visibility is enabled |
| <a name="output_enable_kubernetes_alpha"></a> [enable\_kubernetes\_alpha](#output\_enable\_kubernetes\_alpha) | Indicates whether the Kubernetes alpha version is enabled for the cluster |
| <a name="output_enable_l4_ilb_subsetting"></a> [enable\_l4\_ilb\_subsetting](#output\_enable\_l4\_ilb\_subsetting) | Indicates whether L4 ILB subsetting is enabled |
| <a name="output_enable_legacy_abac"></a> [enable\_legacy\_abac](#output\_enable\_legacy\_abac) | Indicates whether legacy ABAC is enabled for the cluster |
| <a name="output_enable_shielded_nodes"></a> [enable\_shielded\_nodes](#output\_enable\_shielded\_nodes) | Indicates whether shielded nodes are enabled for the cluster |
| <a name="output_enable_tpu"></a> [enable\_tpu](#output\_enable\_tpu) | Indicates whether TPUs are enabled for the cluster |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The endpoint of the cluster |
| <a name="output_id"></a> [id](#output\_id) | The ID of the cluster |
| <a name="output_initial_node_count"></a> [initial\_node\_count](#output\_initial\_node\_count) | The initial number of nodes in the cluster |        
| <a name="output_ip_allocation_policy"></a> [ip\_allocation\_policy](#output\_ip\_allocation\_policy) | The IP allocation policy of the cluster |     
| <a name="output_label_fingerprint"></a> [label\_fingerprint](#output\_label\_fingerprint) | The label fingerprint of the cluster |
| <a name="output_location"></a> [location](#output\_location) | The location of the cluster |
| <a name="output_logging_service"></a> [logging\_service](#output\_logging\_service) | The logging service of the cluster |
| <a name="output_maintenance_policy"></a> [maintenance\_policy](#output\_maintenance\_policy) | The maintenance policy of the cluster |
| <a name="output_master_auth"></a> [master\_auth](#output\_master\_auth) | The master authentication credentials of the cluster |
| <a name="output_master_version"></a> [master\_version](#output\_master\_version) | The Kubernetes master version of the cluster |
| <a name="output_min_master_version"></a> [min\_master\_version](#output\_min\_master\_version) | The minimum Kubernetes master version of the cluster |
| <a name="output_monitoring_service"></a> [monitoring\_service](#output\_monitoring\_service) | The monitoring service of the cluster |
| <a name="output_name"></a> [name](#output\_name) | The name of the cluster |
| <a name="output_network"></a> [network](#output\_network) | The network of the cluster |
| <a name="output_networking_mode"></a> [networking\_mode](#output\_networking\_mode) | The networking mode of the cluster |
| <a name="output_node_locations"></a> [node\_locations](#output\_node\_locations) | The locations of the cluster's nodes |
| <a name="output_operation"></a> [operation](#output\_operation) | The operation of the cluster |
| <a name="output_tpu_ipv4_cidr_block"></a> [tpu\_ipv4\_cidr\_block](#output\_tpu\_ipv4\_cidr\_block) | The IPv4 CIDR block of the cluster's TPUs |    
