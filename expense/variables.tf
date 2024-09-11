variable "ami_id" {
    type = string
      
}

variable "inst_type" {
  
}
variable "tags" {
  default     = {
    Name = "terra"
    Environment = "dev"
    project = "expense"
  }
}

variable "port" {
    type = number
  
}