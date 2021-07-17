variable "aws_region" {
  type        = string
  description = " Define aws region"
  default     = "us-east-1"
}

variable "owner" {
  type        = string
  description = ""
  default     = "Yuri Mussi"
}

variable "aws_profile" {
  type        = string
  description = " Define aws profile"
  default     = "terraform"
}

variable "environment" {}

variable "instance_ami" {
  type        = string
  description = " Define aws instance"
  default     = "ami-0d5eff06f840b45e9"

  validation {
    condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })

  description = "Number of instance to create"

  default = {
    dev  = 1
    prod = 3
  }
}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })

  description = " Define aws instance type"

  default = {
    dev  = "t2.micro"
    prod = "t3.medium"
  }
}

variable "instance_name" {
  type        = string
  description = "instance name"
  default     = "holmes-tf"
}

variable "bucket_acl" {
  type        = string
  description = "Define a s3 bucket acl"
  default     = "private"
}