variable "ami_id" {
    type = string
      
}

variable "Environment" {
  
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