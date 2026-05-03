terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

backend "s3" {
    bucket = "terraform-demo-backend-0305-2026"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }

  required_version = ">= 1.2"
}