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
