
resource "aws_vpc" "gourmet-vpc" {
  cidr_block = module.variaveis.cidr_block
  instance_tenancy = "default"
  tags = {
    Name = "gourmet-vpc"
  }
}