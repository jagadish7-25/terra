module "vpc" {
  source = "../terra-vpc-prj"
  cidr = var.cidr
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  pbsubnet_cidrs  = var.pbsubnet_cidrs
  prsubnet_cidrs = var.prsubnet_cidrs
  data_subnet_cidrs = var.data_subnet_cidrs
  
    
}