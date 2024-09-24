module "vpc" {
  source = "../terra-vpc-prj"
  cidr = var.cidr
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  
  
}