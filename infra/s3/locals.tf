data "aws_caller_identity" "current" {}

resource "time_static" "time" {}

locals {

  common_tags = {
    Service     = "Observability"
    ManageBy    = "Terraform"
    Environment = format("%s", var.environment)
    UpdatedAt   = time_static.time.rfc3339
    Owner       = var.owner
  }

  content_type = "application/json"

  bucket_name = "${var.instance_name}-${data.aws_caller_identity.current.account_id}-${var.environment}"
}