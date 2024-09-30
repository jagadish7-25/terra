data "aws_ssm_parameter" "bastion_sg_id" {
  #/expense/dev/bastion_sg_id
  name = "/${var.project_name}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  #/expense/dev/public_subnet_ids
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
}

data "aws_ami" "joindevops" {

	most_recent      = true
	owners = ["973714476881"]
	
	filter {
		name   = "name"
		values = ["Centos-8-DevOps-Practice"]
	}
	
	filter {
		name   = "root-device-type"
		values = ["ebs"]
	}

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/database_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.database_subnet_ids)
} 