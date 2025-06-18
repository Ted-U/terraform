terraform {
  backend "s3" {
    bucket  = "tedstatefile"
    key     = "dev/terraform.tfstate"
    encrypt = true
    region = "us-west-2"  
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
}
