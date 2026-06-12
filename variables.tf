variable "tenant_id"        { type = string }
variable "client_id"        { type = string }
variable "client_secret"    { type = string sensitive = true }
variable "environment_name" { type = string }
variable "location"         { default = "unitedstates" }
variable "environment_type" { default = "Sandbox" } # Sandbox | Production | Developer
variable "security_group_id"{ type = string default = "" }
