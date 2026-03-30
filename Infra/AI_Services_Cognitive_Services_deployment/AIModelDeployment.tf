

# 2. Cognitive Services Account
resource "azurerm_cognitive_account" "AImodel_ICS" {
  name                = "AI_Model_Deployment_ICS"
  location            = azurerm_resource_group.RG_AIservice_new_model.location
  resource_group_name = azurerm_resource_group.RG_AIservice_new_model.name
  kind                = "OpenAI"
  sku_name            = "S0"
}

# 3. Model Deployment - GPT-4o-mini
resource "azurerm_cognitive_deployment" "gpt-4-32k_mini_deployment" {
  name                 = "gpt-4-32k-deploy"
  cognitive_account_id = azurerm_cognitive_account.AImodel_ICS.id

  model {
    format  = "OpenAI"
    name    = "gpt-4-32k"
    version = "0613"
  }

  sku {
    name = "Standard"
  }
}