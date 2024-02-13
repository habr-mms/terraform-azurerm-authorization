module "authorization" {
  source = "registry.terraform.io/telekom-mms/authorization/azurerm"
  user_assigned_identity = {
    uai-mms = {
      location            = "westeurope"
      resource_group_name = "rg-mms-github"
      tags = {
        project     = "mms-github"
        environment = terraform.workspace
        managed-by  = "terraform"
      }
    }
  }
}
