variable "resource_group_name" {
  type        = string
  description = "Resource group where the cluster has been provisioned."
}

variable "resource_location" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud api token"
}

variable "provision" {
  type        = bool
  description = "Flag indicating that the instance should be provisioned. If false, then the instance is expected to exist already."
  default     = true
}

variable "private_endpoints" {
  type        = bool
  description = "Flag indicating that private endpoints should be enabled. Otherwise public-and-private endpoints will be provisioned."
  default     = true
}

variable "name" {
  type        = string
  description = "The name of the resource. If not provided, the value will default to {name_prefix}-{label}"
  default     = ""
}

variable "label" {
  type        = string
  description = "The label of the resource used to build the name along with the name_prefix."
  default     = "redis"
}

variable "tags" {
  type        = list(string)
  description = "Tags that should be applied to the service"
  default     = []
}

variable "name_prefix" {
  type        = string
  description = "The prefix name for the service. If not provided it will default to the resource group name"
  default     = ""
}

variable "plan" {
  type        = string
  description = "The type of plan the service instance should run under (lite, standard)"
  default     = "standard"
}
