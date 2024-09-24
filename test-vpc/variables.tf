variable "dns_hostnames" {
  default = "true"
}

variable "project_name" {
    default = "expense"
}

variable "environment" {
   default = "dev"
}

variable "cidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "common_tags" {
    default = {
        Project = "expense"
        Terraform = "true"
        Environment = "dev"
    }
}
variable "pbsubnet_cidrs" {
  type = list()
  default = [ "10.0.1.0/24", "10.0.2.0/24"]
}
variable "avz" {
  type = list()
  default = ["us-east-1a", "us-east-1b"]
}
variable "public_subnet_tags" {
  default = local.resource_names-public
}
variable "prsubnet_cidrs" {
    type = list()
    default = ["10.0.11.0/24", "10.0.12.0/24"]
  
}

variable "data_subnet_cidrs" {
    type = list()
    default = ["10.0.21.0/24", "10.0.22.0/24"]
  
}

