variable "ami_id" {
    type = string
      
}

variable "inst_type" {
  
}
variable "tags" {
    type = map(string)
  default     = {
    Name = "terra"
    Environment = "dev"
    project = "expense"
  }
}

variable "port" {
    type = number
  
}