variable "resource_group_name" {
  type        = string
  description = "The name of the resource group we want to use"
  default     = ""
}

variable "location" {
  type        = string
  description = "The location/region where we are crrating the resource"
  default     = ""
}

variable "tags" {
  description = "The tags to associate the resource we are creating"
  type        = map(any)
  default     = {}
}

# Everything below is for the module

variable "vnet_name" {
  type        = string
  description = "Name of the vnet to create the subnets in"
  default     = ""
}

variable "subnets" {
  type        = list(any)
  description = "The address prefix to use for the subnet."
  default     = ["10.135.20.0/24"]
}

variable "add_endpoint" {
  type        = bool
  description = "should we be adding an endpint, leave this as is"
  default     = false
}