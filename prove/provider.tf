terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   backend "s3" {
    bucket = "terra-chcocjohns"
    key    = "remot3-terra-key"
    region = "us-east-1"
    dynamodb_table = "data_lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}