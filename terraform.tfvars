subscription_id = ""
client_id       = ""
client_secret   = ""
tenant_id       = ""

application = "tfworkspaces"
environment = "workspaces"
location    = "westeurope"
capacity    = 5

default_tags = {
  environment = "workspaces"
  deployed_by = "faizanbashir"
}

address_space = "10.134.0.0/16"
subnet        = "10.134.20.0/24"