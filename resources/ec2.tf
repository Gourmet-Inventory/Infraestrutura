
resource "aws_instance" "VM_publica" {
  ami                         = module.variaveis.ami
  instance_type               = module.variaveis.tipo_instancia
  subnet_id                   = aws_subnet.sub_net_publica.id
  associate_public_ip_address = true
  security_groups             = [aws_security_group.Ec2-publica.id]
  tags                        = { name = "ubuntu-ec2" }

}

resource "aws_instance" "VM_privada" {
  ami                         = module.variaveis.ami
  instance_type               = module.variaveis.tipo_instancia
  subnet_id                   = aws_subnet.sub_net_privada.id
  associate_public_ip_address = false
  security_groups             = [aws_security_group.Ec2-privada.id]
  tags                        = { name = "ubuntu-ec2" }
}