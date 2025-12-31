terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # S3 Backend with DynamoDB Locking
  backend "s3" {
    bucket         = "faruk-terraform-lab-001"
    key            = "vpc/terraform.tfstate" # Eiti state file-er path
    region         = "us-east-1"             # Apnar bucket-er region
    dynamodb_table = "terraform-lock"        # Apnar DynamoDB table name
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}