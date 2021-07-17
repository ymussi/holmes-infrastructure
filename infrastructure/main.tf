terraform {
  required_version = "1.0.0"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "3.39.0"
    }

    time = {
      source  = "hashicorp/time"
      version = "0.7.1"
    }
  }

  backend "s3" {
    bucket  = "holmes-407187023185-dev"
    key     = "holmes-407187023185-dev.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}