#!/bin/bash
# Nova Access Key e Secret Key
NEW_ACCESS_KEY=""
NEW_SECRET_KEY=""
NEW_SESSION_TOKEN=""
AWS_PROFILE="default"  # Nome do perfil, geralmente "default"

# Configurando as novas credenciais com session token
aws configure set aws_access_key_id "$NEW_ACCESS_KEY" --profile "$AWS_PROFILE"
aws configure set aws_secret_access_key "$NEW_SECRET_KEY" --profile "$AWS_PROFILE"
aws configure set aws_session_token "$NEW_SESSION_TOKEN" --profile "$AWS_PROFILE"

echo "AWS credentials updated successfully for profile '$AWS_PROFILE' with session token."


