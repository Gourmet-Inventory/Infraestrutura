# Use uma imagem base do JDK 17 (ou a versão do JDK que seu app requer)
FROM openjdk:17-jdk-slim

# Cria um diretório para o app
WORKDIR /app

# Copia o arquivo app.jar para dentro do contêiner
COPY jar /app/gourmet_inventory

# Defina valores padrão para as variáveis de ambiente AWS
ENV aws_region=us-east-1
ENV aws_s3_bucket=gourmet-inventory-bucket

EXPOSE 8080

# Define o comando para iniciar o app
CMD ["java", "-jar", "/app/gourmet_inventory/gourmet-inventory-project.jar"]