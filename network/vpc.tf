resource "aws_vpc" "vpc_task" {
  cidr_block           = var.cidr
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"

  tags = {
    Name = "vpc_task"
  }
}
