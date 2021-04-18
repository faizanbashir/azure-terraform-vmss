locals {
  resource_group_name = "${var.application}-${var.environment}"
  vnet_name           = "${var.application}-${var.environment}-vnet"
  subnet_name         = "${var.application}-${var.environment}-subnet"
  saname              = "${var.application}${var.environment}"
}

resource "azurerm_resource_group" "lab2" {
  name     = local.resource_group_name
  location = var.location
  tags     = merge(var.default_tags, map("type", "resource"))
}

module "vnet" {
  source              = "./modules/vnet"
  location            = var.location
  resource_group_name = local.resource_group_name
  vnet_name           = local.vnet_name
  address_space       = var.address_space

  tags = merge(var.default_tags, map("type", "network"))
}

module "subnets" {
  source              = "./modules/subnet"
  location            = var.location
  resource_group_name = local.resource_group_name
  vnet_name           = module.vnet.vnet_name

  subnets = [
    {
      name   = local.subnet_name
      prefix = var.subnet
    }
  ]

  tags = merge(var.default_tags, map("type", "network"))
}

module "vmss" {
  source              = "./modules/vmss"
  location            = var.location
  capacity            = var.capacity
  saname              = local.saname
  subnet_id           = module.subnets.vnet_subnets
  resource_group_name = local.resource_group_name

  tags = merge(var.default_tags, map("type", "vmss"))
}