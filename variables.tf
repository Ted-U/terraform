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

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/24"   # optional
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "example-sg"
}

variable "sg_description" {
  description = "Description of the security group"
  type        = string
  default     = "Allow SSH"
}

variable "ingress_from_port" {
  description = "Ingress start port"
  type        = number
  default     = 22
}

variable "ingress_to_port" {
  description = "Ingress end port"
  type        = number
  default     = 22
}

variable "ingress_protocol" {
  description = "Ingress protocol"
  type        = string
  default     = "tcp"
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks allowed for ingress"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


