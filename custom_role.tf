data "azurerm_subscription" "primary"{}

resource "azurerm_role_definition" "test-role" {
    role_definition_id = "5724b903-4538-4a5e-a901-8800185b5788"
    name = "IamRule"
    scope = data.azurerm_subscription.primary.id

    permissions {
        actions = ["Microsoft.Resources/subscriptions/resourceGroups/read"]
        not_actions = []
    }

    assignable_scopes = [
        data.azurerm_subscription.primary.id,
    ]
}