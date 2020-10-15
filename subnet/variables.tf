variable "naming_rules" {
  description = "naming conventions yaml file"
  type        = string
}

variable "resource_group_name"{
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "names" {
  description = "names to be applied to resources"
  type        = map(string)
}

variable "tags" {
  description = "tags to be applied to resources"
  type        = map(string)
}

# Networking
variable "virtual_network_name" {
  description = "virtual network name"
  type        = string
}

variable "subnet_type" {
  description = "subnet type"
  type        = string
}

variable "cidrs" {
  description = "CIDRs for subnet"
  type        = list(string)
}

variable "deny_all_ingress" {
  description = "default deny all ingress in subnet nsg rules"
  type        = bool
  default     = true
}

variable "deny_all_egress" {
  description = "default deny all egress in subnet nsg rules"
  type        = bool
  default     = true
}

# Subnet Options
variable "enforce_private_link_endpoint_network_policies" {
  description = "enable network policies for the private link endpoint on the subnet"
  type        = bool
  default     = false
}

variable "enforce_private_link_service_network_policies" {
  description = "enable network policies for the private link service on the subnet"
  type        = bool
  default     = false
}

variable "service_endpoints" {
  description = "service endpoints to associate with the subnet"
  type        = list(string)
  default     = []
}

variable "delegations" {
  description = "delegation blocks for services"
  type        = map(object({
                  name    = string
                  actions = list(string)
                }))
  default     = {}
}

