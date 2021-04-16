module "dev_redis" {
  source = "./module"

  resource_group_name = module.resource_group.name
  resource_location   = var.region
  name_prefix         = var.name_prefix
  ibmcloud_api_key    = var.ibmcloud_api_key
}
