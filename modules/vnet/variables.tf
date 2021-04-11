variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = ""
}

variable "location" {
  type        = string
  description = "The location/region for the resources"
  default     = ""
}

variable "tags" {
  type        = map(any)
  description = "The tags to associate with resources"
  # default = []
}

# Module specific variables

variable "vnet_name" {
  type        = string
  description = "Name of VNet to create"
}

variable "address_space" {
  type        = string
  description = "The VNet CIDR"
}

variable "dns_servers" {
  type        = list(any)
  description = "The DNS Servers to be used with VNet"
  default     = []
}