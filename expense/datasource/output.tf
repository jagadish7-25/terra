output "ami_id" {
  value = data.aws_ami.latestdev.image_id
}