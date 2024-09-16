variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instances" {
    type = map
    default = {
        mysql = "t3.micro"
        backend = " t2.micro"
        frontend = "t2.micro"
    }
  
}

variable "port" {
    type = number
    default = "22"
  
}







