variable "location" {}

resource "azurerm_resource_group" "rg" {
  name = "rg"
  location = var.location
}

output "id" {
    value = azurerm_resource_group.rg.id
}