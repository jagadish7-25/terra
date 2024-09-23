variable "cidr" {
    type = list(string) 
    default = ["172.31.1.0/24","172.31.2.0/24","172.31.3.0/24"]
    }

    
    


variable "avz" {
  type = list(string)
  default = [ "us-east-1a", "us-east-1b", "us-east-1c" ]
}

variable "sname" {
  type = list(string)
  default = [ "expens-1-public","expense-1-prv","expense-1-database" ]
}