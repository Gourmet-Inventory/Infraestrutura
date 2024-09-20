##ACL Privada

resource "aws_network_acl" "aclPrivada" {
  vpc_id = aws_vpc.gourmet-vpc.id
}
resource "aws_network_acl_rule" "aclPrivadaRule1" {
  network_acl_id = aws_network_acl.aclPrivada.id
  rule_number    = 100
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "10.0.0.0/25"
  from_port      = 22
  to_port        = 22
}
resource "aws_network_acl_rule" "aclPrivadaRule2" {
  network_acl_id = aws_network_acl.aclPrivada.id
  rule_number    = 101
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "10.0.0.0/25"
  from_port      = 80
  to_port        = 80
}
resource "aws_network_acl_rule" "aclPrivadaRule3" {
  network_acl_id = aws_network_acl.aclPrivada.id
  rule_number    = 102
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "10.0.0.0/25"
  from_port      = 443
  to_port        = 443
}
resource "aws_network_acl_association" "associateAclPrivada" {
  network_acl_id = aws_network_acl.aclPrivada.id
  subnet_id      = aws_subnet.sub_net_privada.id
}


####ACL publica
resource "aws_network_acl" "aclPublica" {
  vpc_id = aws_vpc.gourmet-vpc.id
}
resource "aws_network_acl_rule" "aclPublicaRule1" {
  network_acl_id = aws_network_acl.aclPublica.id
  rule_number    = 103
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/25"
  from_port      = 22
  to_port        = 22
}
resource "aws_network_acl_rule" "aclPublicaRule2" {
  network_acl_id = aws_network_acl.aclPublica.id
  rule_number    = 104
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/25"
  from_port      = 80
  to_port        = 80
}
resource "aws_network_acl_rule" "aclPublicaRule3" {
  network_acl_id = aws_network_acl.aclPublica.id
  rule_number    = 105
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/25"
  from_port      = 443
  to_port        = 443
}
resource "aws_network_acl_association" "associateAclPublica" {
  network_acl_id = aws_network_acl.aclPublica.id
  subnet_id      = aws_subnet.sub_net_publica.id
}