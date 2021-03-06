provider "ibm" {
  version = ">= 1.2.1"
}

data "ibm_resource_group" "resource_group" {
  name = var.resource_group_name
}

locals {
  role            = "Operator"
  name_prefix     = var.name_prefix != "" ? var.name_prefix : var.resource_group_name
}

resource "ibm_resource_instance" "redis_instance" {
  name              = "${replace(local.name_prefix, "/[^a-zA-Z0-9_\\-\\.]/", "")}-redis"
  service           = "databases-for-redis"
  plan              = var.plan
  location          = var.resource_location
  resource_group_id = data.ibm_resource_group.resource_group.id
  tags              = var.tags

  timeouts {
    create = "45m"
    update = "15m"
    delete = "15m"
  }
}

resource "ibm_resource_key" "redis_key" {
  name                 = "${ibm_resource_instance.redis_instance.name}-key"
  role                 = local.role
  resource_instance_id = ibm_resource_instance.redis_instance.id

  //User can increase timeouts
  timeouts {
    create = "15m"
    delete = "15m"
  }
}
