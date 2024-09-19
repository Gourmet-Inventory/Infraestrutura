resource "aws_eip" "lb" {
  instance = aws_instance.VM_publica
  domain   = "vpc"
}