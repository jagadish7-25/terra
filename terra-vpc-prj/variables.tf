variable "dns_hostnames" {
  default = "true"
}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "cidr" {
    default = {}
  
}
variable "common_tags" {
  default = {}
}

variable "Vpc_tags" {
  default = {}
}
variable "igw_tags" {
  default = {}
}