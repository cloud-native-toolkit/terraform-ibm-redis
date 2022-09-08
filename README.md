# IBM Redis

This module to provision a managed Redis instance within an IBM Cloud account.

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v0.15

### Terraform providers

- IBM Cloud provider >= 1.22.0

## Module dependencies

This module makes use of the output from other modules:

- Resource group - github.com/cloud-native-toolkit/terraform-ibm-resource-group

## Example usage

[Refer test cases for more details](test/stages/stage2-redis.tf)

```hcl-terraform
terraform {
  required_providers {
    ibm = {
      source = "ibm-cloud/ibm"
    }
  }
  required_version = ">= 0.15"
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}

module "redis" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-redis.git"

  resource_group_name = module.resource_group.name
  resource_location   = var.region
  name_prefix         = var.name_prefix
}
```

