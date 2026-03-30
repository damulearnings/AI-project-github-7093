#  Create a Resource Group for AI-Services i.e. Cognitive Services 

resource "azurerm_resource_group" "ai-D" {
  name     = "RG-QA-AI-Service-Resources"
  location = "East US"
}
