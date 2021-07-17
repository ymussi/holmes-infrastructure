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

variable "bucket_acl" {
  type        = string
  description = "Define a s3 bucket acl"
  default     = "private"
}

variable "instance_name" {
  type        = string
  description = "instance name"
  default     = "holmes"
}