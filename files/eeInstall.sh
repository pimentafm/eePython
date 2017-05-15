#!/bin/bash

#Instalação do Earth Engine Python API
#Check system name version and arch

OS=$(lsb_release -si)

if [ $OS == "Korora" ]; then
  PACKMAN=dnf
else
  PACKMAN=apt-get
fi

#Instalar python package manager (pip)
$PACKMAN -y install python-pip

#Instalação do Google APIs Client Library
pip install google-api-python-client --upgrade

#Verificar se a biblioteca crypto está instalada
python -c "from oauth2client import crypt"

#Caso o comando anterior voltar algum erro
pip install pyCrypto --upgrade

#Instalação do Secure Sockets Layer Protocol    
pip install 'pyOpenSSL>=0.11' --upgrade

#Instalação do Earth Engine Python API            
pip install earthengine-api --upgrade

#Setar credenciais de autenticação
#Abre o browser para você inserir sua senha do gmail e receber um número de autenticação
earthengine authenticate  
