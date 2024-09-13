data "aws_ami" "data_new" {
  most_recent = true

  owners = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

}

output "new_data" {
   value = data.aws_ami.data_new.image_id
}