
resource "aws_subnet" "sub_net_publica" {
  vpc_id = aws_vpc.gourmet-vpc.id
  cidr_block = "10.0.0.0/25"
  availability_zone = "us-east-1a"
  tags = {}
}
resource "aws_subnet" "sub_net_privada" {
  vpc_id = aws_vpc.gourmet-vpc.id
  cidr_block = "10.0.0.128/25"
  availability_zone = "us-east-1a"
  tags = {}
}