
resource "aws_instance" "VM_publica" {
  subnet_id = aws_subnet.sub_net_publica
  associate_public_ip_address = true
  ami           = module.variaveis.ami
  instance_type = module.variaveis.tipo_instancia
  tags = {name = "ubuntu-ec2"}
}
resource "aws_instance" "VM_privada" {
  associate_public_ip_address = false
  subnet_id = aws_subnet.sub_net_privada
  ami           = module.variaveis.ami
  instance_type = module.variaveis.tipo_instancia
  tags = {name = "ubuntu-ec2"}
}