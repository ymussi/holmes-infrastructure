terraform {
	required_version = "1.0.0"

	required_providers {
		aws = {
			resource = "hashicorp/aws"
			version = "3.39.0"
		}

		time = {
			resource = "hashicorp/time"
			version = "0.7.1"
		}
	}
}

provider "aws" {
	region = var.aws_region
	profile = var.aws_profile
}
