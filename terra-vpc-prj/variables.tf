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
  type = list()
  default = []
}
variable "avz" {
  type = list()
  default = []
}
variable "public_subnet_tags" {
  default = {}
}
variable "prsubnet_cidrs" {
  type = list()
  default = []
}
variable "private_subnet_tags" {
  default = {}
}

variable "data_subnet_cidrs" {
    type = list
    description = []
}
variable "data_subnet_tags" {
  default = {}
}
