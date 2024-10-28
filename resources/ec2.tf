
resource "aws_instance" "VM_publica" {
  ami                         = module.variaveis.ami
  instance_type               = module.variaveis.tipo_instancia
  subnet_id                   = aws_subnet.sub_net_publica.id
  associate_public_ip_address = true
  security_groups             = [aws_security_group.Ec2-publica.id]
  tags                        = { name = "ubuntu-ec2" }
  key_name = aws_key_pair.gourmet-key.id

}
resource "aws_key_pair" "gourmet-key" {
  key_name   = "Gourmet-keys"
  public_key = file("Gourmet-keys.pub")
}


resource "aws_instance" "VM_privada_A" {
  ami                         = module.variaveis.ami
  instance_type               = module.variaveis.tipo_instancia
  subnet_id                   = aws_subnet.sub_net_privada.id
  associate_public_ip_address = false
  security_groups             = [aws_security_group.Ec2-privada.id]
  tags                        = { name = "ubuntu-ec2" }
  key_name                    = aws_key_pair.gourmet-key.id

  private_ip = "10.0.0.201"
}

resource "aws_instance" "VM_privada_B" {
  ami                         = module.variaveis.ami
  instance_type               = module.variaveis.tipo_instancia
  subnet_id                   = aws_subnet.sub_net_privada.id
  associate_public_ip_address = false
  security_groups             = [aws_security_group.Ec2-privada.id]
  tags                        = { name = "ubuntu-ec2" }
  key_name                    = aws_key_pair.gourmet-key.id

  private_ip = "10.0.0.200"
}