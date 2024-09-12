data "aws_ami" "terradevops" {
  most_recent = true
  owners = ["992382427676"]

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
