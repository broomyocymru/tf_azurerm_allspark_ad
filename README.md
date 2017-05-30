# tf_azurerm_allspark_ad
Terraform module to configure an AllSpark Active Directory configuration in Azure.

## Input variables
  * name [required]

## Outputs
  * allspark_data - map


## Example use

    module "allspark" {
      source  = "github.com/broomyocymru/tf_azurerm_allspark_ad"
      name = "allspark"
    }


## License

MIT - see the included LICENSE file for more details.
