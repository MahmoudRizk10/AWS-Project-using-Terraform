resource "aws_route_table" "privRT-A" {
  vpc_id = aws_vpc.vpc_task.id
  route {
    cidr_block     = var.internet_cidr
    nat_gateway_id = aws_nat_gateway.NAT-GW-A.id
  }
}
resource "aws_route_table" "privRT-B" {
  vpc_id = aws_vpc.vpc_task.id
  route {
    cidr_block     = var.internet_cidr
    nat_gateway_id = aws_nat_gateway.NAT-GW-A.id
  }
}
resource "aws_route_table" "publRT-A" {
  vpc_id = aws_vpc.vpc_task.id
  route {
    cidr_block = var.internet_cidr
    gateway_id = aws_internet_gateway.IGW.id
  }
}
resource "aws_route_table" "publRT-B" {
  vpc_id = aws_vpc.vpc_task.id
  route {
    cidr_block = var.internet_cidr
    gateway_id = aws_internet_gateway.IGW.id
  }
}
resource "aws_route_table_association" "PubRTAss-A" {
  subnet_id      = aws_subnet.publicA.id
  route_table_id = aws_route_table.publRT-A.id
}
resource "aws_route_table_association" "PubRTAss-B" {
  subnet_id      = aws_subnet.publicB.id
  route_table_id = aws_route_table.publRT-B.id
}
resource "aws_route_table_association" "PriRTAss-A" {
  subnet_id      = aws_subnet.privateA.id
  route_table_id = aws_route_table.privRT-A.id
}
resource "aws_route_table_association" "PriRTAss-B" {
  subnet_id      = aws_subnet.privateB.id
  route_table_id = aws_route_table.privRT-B.id
}