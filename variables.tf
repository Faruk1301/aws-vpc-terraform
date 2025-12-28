variable "aws_region" {
  description = "AWS Deployment Region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "Standard-VPC-Project"
}

variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "Dev"
}