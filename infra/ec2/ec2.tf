resource "aws_instance" "server" {

  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami = var.instance_ami

  instance_type = lookup(var.instance_type, var.environment)

  tags = merge(local.common_tags, {
    Name    = format("${var.instance_name}-${var.environment} %d", count.index + 1),
    Project = "Observability"
  })
}