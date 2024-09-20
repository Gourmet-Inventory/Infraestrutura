###Route Table Privado

resource "aws_route_table" "RouteTablePublica" {
  vpc_id = aws_vpc.gourmet-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
  }
  tags = {}
}
resource "aws_route_table_association" "AssociateRouteTablePublica" {
  route_table_id = aws_route_table.RouteTablePublica.id
  subnet_id      = aws_subnet.sub_net_publica.id
}

###Route Table Privado

resource "aws_route_table" "RouteTablePrivada" {
  vpc_id = aws_vpc.gourmet-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
  }
  tags = {}

}
resource "aws_route_table_association" "AssociateRouteTablePrivada" {
  route_table_id = aws_route_table.RouteTablePrivada.id
  subnet_id      = aws_subnet.sub_net_privada.id
}
