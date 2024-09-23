variable "cidr" {
    type = map 
    default = {
        expense-2-public = "172.31.1.0/24"
        expense-2-private = "172.31.2.0/24"
        expense-3-database = "172.31.3.0/24"
    }

    
    
}

variable "avz" {
  type = list(string)
  default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}