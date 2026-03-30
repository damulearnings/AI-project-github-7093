#  Create a Resource Group for AI-Services i.e. Cognitive Services 


#  Cognitive Services Account (e.g., for OpenAI) - to hold all AI-Services 
resource "azurerm_cognitive_account" "ai-service-OpenAI-D" {
  name                = "oai-QA-service-account-D"
  location            = azurerm_resource_group.ai-D.location
  resource_group_name = azurerm_resource_group.ai-D.name
  kind                = "OpenAI"                             # Options: AIServices, SpeechServices, etc.
  sku_name            = "S0"
}

# 3. Model Deployment
resource "azurerm_cognitive_deployment" "oai-model-deployment-D" {
  name                 = "gpt-4-LLM-QA"
  cognitive_account_id = azurerm_cognitive_account.ai-service-OpenAI-D.id
  model {
    format  = "OpenAI"
    name    = "gpt-4o-mini"
    version = "2024-07-18"
  }
# 4. Model Deployment
resource "azurerm_cognitive_deployment" "oai-model-deployment-D" {
  name                 = "gpt-4-LLM-Development"
  cognitive_account_id = azurerm_cognitive_account.ai-service-OpenAI-D.id
  model {
    format  = "OpenAI"
    name    = "gpt-4"
    version = "turbo-2024-04-09"
  }
  sku {
    name = "Standard"
  }
}
