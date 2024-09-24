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
variable "pbsubnet_cidrs" {
  default = []
}
variable "avz" {
  default = []
}
variable "public_subnet_tags" {
  default = {}
}
variable "prsubnet_cidrs" {
  default = []
}
variable "private_subnet_tags" {
  default = {}
}

variable "data_subnet_cidrs" {
    description = []
}
variable "data_subnet_tags" {
  default = {}
}
