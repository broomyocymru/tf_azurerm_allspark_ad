variable "allspark" {
  description = "allspark network and storage details"
  type = "map"
}

variable "name" {
  description = "Resource name"
  default = "Allspark-AD"
}

variable "admin_username" {
  description = "Admin Username"
}

variable "admin_password" {
  description = "Admin Password"
}

variable "domain" {
  description = "domain name, e.g. allspark.local"
  default = "allspark.local"
}

variable "dns_prefix" {
  description = "Prefix used for access"
  default = "allspark-ad"
}
