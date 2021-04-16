provider "ibm" {
  generation       = 2
  region           = var.resource_location
  ibmcloud_api_key = var.ibmcloud_api_key
}
