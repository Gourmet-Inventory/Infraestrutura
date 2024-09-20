resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.elastic-ip-Nat.id
  subnet_id     = aws_subnet.sub_net_privada.id
  tags = {
    Name = "gourmet-nat"
  }
}
