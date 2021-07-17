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

provider "aws" {
  region  = var.aws_region
}