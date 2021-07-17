resource "aws_s3_bucket" "remote-state" {
  bucket = local.bucket_name
  versioning {
    enabled = true
  }

  acl = var.bucket_acl
  tags = merge(local.common_tags, {
    Project = "remote-state"
  })
}