variable "resource_group_name" {
  type    = string
  default = "rg-linux-vm"
}

variable "location" {
  type    = string
  default = "westus2"
}

variable "subscription_id" {
  type = string
}

variable "environment" {
  type    = string
  default = "dev"
  validation {
    condition     = contains(["prod", "dev"], var.environment)
    error_message = "Valid value is one of the following: dev, prod"
  }
}

variable "machine_name" {
  type    = string
  default = "arrakis"
}

variable "machine_user" {
  type = string
}

variable "machine_password" {
  type      = string
  sensitive = true
}

variable "machine_size" {
  type = string
}