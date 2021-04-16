output "id" {
  description = "The id of the provisioned redis instance"
  value       = data.ibm_resource_instance.redis_instance.id
}

output "name" {
  description = "The name of the provisioned redis instance"
  value       = local.name
  depends_on  = [data.ibm_resource_instance.redis_instance]
}

output "key_id" {
  description = "The id of the key provisioned for the redis instance"
  value       = ibm_resource_key.redis_key.id
}
