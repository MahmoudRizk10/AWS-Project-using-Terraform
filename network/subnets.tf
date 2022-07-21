resource "aws_subnet" "publicA" {
  vpc_id            = aws_vpc.vpc_task.id
  cidr_block        = var.publicA_subnet_cidr
  availability_zone = "eu-central-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "publicone"
  }
}
resource "aws_subnet" "publicB" {
  vpc_id            = aws_vpc.vpc_task.id
  cidr_block        = var.publicB_subnet_cidr
  availability_zone = "eu-central-1b"
  map_public_ip_on_launch = "true"


  tags = {
    Name = "publictwo"
  }
}
resource "aws_subnet" "privateA" {
  vpc_id            = aws_vpc.vpc_task.id
  cidr_block        = var.privateA_subnet_cidr
  availability_zone = "eu-central-1a"

  tags = {
    Name = "privateone"
  }
}
resource "aws_subnet" "privateB" {
  vpc_id            = aws_vpc.vpc_task.id
  cidr_block        = var.privateB_subnet_cidr
  availability_zone = "eu-central-1b"

  tags = {
    Name = "privatetwo"
  }
}