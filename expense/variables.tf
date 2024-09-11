variable "ami_id" {
    type = string
      
}

variable "instance_type" {
  
}
variable "instance_names" {
  type = list(string)
  default = [ "mysql", "backend", "frontend" ]
  
}
variable "port" {
    type = number
  
}