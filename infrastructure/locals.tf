data "aws_caller_identity" "current" {}

resource "time_static" "time" {}

locals {

  instance_number = lookup(var.instance_number, var.environment)

  common_tags = {
    Service     = "Observability"
    ManageBy    = "Terraform"
    Environment = format("%s", var.environment)
    UpdatedAt   = time_static.time.rfc3339
    Owner       = var.owner
    Teste       = "TF Learn"
  }
}
