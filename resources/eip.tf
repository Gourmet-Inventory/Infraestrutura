resource "aws_eip" "elastic-ip-vm-publica" {
  instance = aws_instance.VM_publica.id
  domain   = "vpc"
}
# resource "aws_eip_association" "eip-vm-publica-assoc" {
#   instance_id   = aws_instance.VM_publica.id
#   allocation_id = aws_eip.elastic-ip-vm-publica.id
# }

resource "aws_eip" "elastic-ip-Nat" {
  domain   = "vpc"
}