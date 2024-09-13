variable "instance_type" {
   type = list(string)
   default = [ "t3.micro", "t2.micro", "t2.micro" ]
}

variable "instance_names" {
   type = list(string)
   default = [ "mysql", "backend", "frontend" ]
}


variable "dname" {
    type = string
    default = "chocojohns.online"
  
}