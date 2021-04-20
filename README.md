# IBM Redis

Module to provision a managed Redis instance within an IBM Cloud account.

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v13

### Terraform providers

- IBM Cloud provider >= 1.22.0

## Module dependencies

This module makes use of the output from other modules:

- Resource group - github.com/cloud-native-toolkit/terraform-ibm-resource-group

## Example usage

```hcl-terraform
module "redis" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-redis.git"

  resource_group_name = module.resource_group.name
  resource_location   = var.region
  name_prefix         = var.name_prefix
  ibmcloud_api_key    = var.ibmcloud_api_key
}
```

