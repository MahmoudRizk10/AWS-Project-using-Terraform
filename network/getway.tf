resource "aws_internet_gateway" "IGW" {

  vpc_id = aws_vpc.vpc_task.id
  tags = {
    Name = "Igetway"
  }
}
resource "aws_eip" "myEIP" {
  vpc = true
}
resource "aws_nat_gateway" "NAT-GW-A" {
  allocation_id = aws_eip.myEIP.id
  subnet_id     = aws_subnet.publicA.id
  tags = {
    Name = "Natgetway-1"
  }
}