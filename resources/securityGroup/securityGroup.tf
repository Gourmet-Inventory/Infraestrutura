resource "aws_security_group" "Ec2-publica" {
  name        = "Ec2-publica"
  description = "Allow SSH and HTTP connection from public subnet in us-east-1a"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}