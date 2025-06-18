variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag for the bucket"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the existing VPC"
  type        = string
}

data "aws_vpc" "existing" {
  id = var.vpc_id
}
