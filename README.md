# INFRAESTRUTURA
___

## Terraform

### Para Iniciar 
terraform apply
### Depois de usar 
terraform destroy

***

## Entrar nas maquinas

### testar maquinas
scp -i "Gourmet-keys.pem" Gourmet-keys.pem ubuntu@3.210.104.99:/home/ubuntu/
#### Front
ssh -i "Gourmet-keys.pem" ubuntu@3.210.104.99
#### Backend A
ssh -i "Gourmet-keys.pem" ubuntu@10.0.0.201
#### Backend B
ssh -i "Gourmet-keys.pem" ubuntu@10.0.0.202

---

## Docker

### Java
sudo docker build -t --no-cache gourmet-inventory:latest
sudo docker tag gourmet-inventory:latest voltty/gourmet-inventory:latest
sudo docker push voltty/gourmet-inventory:latest
sudo docker run -d -e aws_access_key_id=Y76562378 -e aws_secret_acess_key=312312312312345 -e aws_session_token=321312321 -p 8080:8080  voltty/gourmet-inventory:latest

### Nginx
sudo docker build -t --no-cache site-gourmet-inventory:latest
sudo docker tag site-gourmet-inventory:latest voltty/gourmet-inventory:latest
sudo docker push voltty/site-gourmet-inventory:latest
sudo docker run -d -p 80:80  voltty/site-gourmet-inventory:latest

___


