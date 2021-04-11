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

variable "subnet_id" {
  type        = string
  description = ""
  default     = ""
}

variable "saname" {
  type        = string
  description = ""
  default     = ""
}

variable "capacity" {
  type        = string
  description = ""
  default     = ""
}