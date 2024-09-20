variable "ami" {
  type        = string
  description = "imagem de maquina amazon"
  default     = "ami-06640050dc3f556bb"
}
variable "tipo_instancia" {
  type        = string
  default     = "t1.micro"
  description = "tipo de instancia"
}
