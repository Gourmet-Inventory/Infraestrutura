resource "aws_internet_gateway" "internetGateway-gourmet" {
  vpc_id = aws_vpc.gourmet-vpc.id
  tags = {
    name = "gourmetnternet-gateway"
  }
}