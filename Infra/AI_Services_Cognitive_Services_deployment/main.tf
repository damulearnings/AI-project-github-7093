#  Create a Resource Group for AI-Services i.e. Cognitive Services 

resource "azurerm_resource_group" "ai-D" {
  name     = "RG-QA-AI-Service-Resources"
  location = "East US2"
}

# 1. Resource Group
resource "azurerm_resource_group" "RG_AIservice_new_model" {
  name     = "oai-llm-qa-centralus"
  location = "Central US"
}