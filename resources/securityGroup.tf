resource "aws_security_group" "Ec2-publica" {
  vpc_id = aws_vpc.gourmet-vpc.id
  name        = "Ec2-publica"
  description = "Allow SSH and HTTP connection from public subnet in us-east-1a"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
}

resource "aws_security_group" "Ec2-privada" {
  vpc_id = aws_vpc.gourmet-vpc.id
  name        = "Ec2-privada"
  description = "Allow SSH and HTTP connection from public subnet in us-east-2a"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/25"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/25"]
  }
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
}