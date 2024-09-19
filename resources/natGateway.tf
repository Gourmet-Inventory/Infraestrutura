resource "aws_nat_gateway" "example" {
  subnet_id     = aws_subnet.sub_net_privada

  tags = {
    Name = "gourmet-nat"
  }

  depends_on = [aws_internet_gateway.internetGateway-gourmet]
}