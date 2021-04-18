output "id" {
  description = "The id of the provisioned redis instance"
  value       = data.ibm_database.redis_instance.id
}

output "name" {
  description = "The name of the provisioned redis instance"
  value       = local.name
  depends_on  = [data.ibm_database.redis_instance]
}

output "crn" {
  description = "The id of the provisioned redis instance"
  value       = data.ibm_database.redis_instance.id
}

output "location" {
  description = "The location of the provisioned redis instance"
  value       = var.resource_location
  depends_on  = [data.ibm_database.redis_instance]
}

output "key_name" {
  description = "The name of the key provisioned for the redis instance"
  value       = local.key_name
  depends_on = [ibm_resource_key.redis_key]
}

output "key_id" {
  description = "The id of the key provisioned for the redis instance"
  value       = ibm_resource_key.redis_key.id
}

output "service" {
  description = "The name of the key provisioned for the redis instance"
  value       = local.service
  depends_on = [data.ibm_database.redis_instance]
}

output "label" {
  description = "The label for the redis instance"
  value       = var.label
  depends_on = [data.ibm_database.redis_instance]
}
