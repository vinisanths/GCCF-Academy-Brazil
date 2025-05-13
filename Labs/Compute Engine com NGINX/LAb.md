# Laboratório GCP - Compute Engine com NGINX

Este repositório documenta as etapas práticas de um laboratório no **Google Cloud Platform (GCP)**. O foco principal está na criação e gerenciamento de **instâncias de máquina virtual (VM)** usando o **Compute Engine**, ativação do **Cloud Shell**, instalação de um **servidor NGINX**, e utilização da ferramenta de linha de comando `gcloud`.

---

## 📋 Conteúdo do Laboratório

### ✅ Acesso ao Console e Início do Lab

- Início pelo botão “Começar o laboratório”
- Acesso ao console via credenciais temporárias
- Login em aba anônima do navegador com **Username** e **Password** fornecidos

---

### ⚙️ Ativação do Cloud Shell

- Cloud Shell ativado com um clique no topo do console
- Autenticação e conexão automática com o projeto
- Uso da CLI `gcloud` para execução de comandos

---

### 🌍 Regiões e Zonas

- Configuração da região e zona com:
bash
  ```
  gcloud config set compute/region REGION
  export REGION=REGION
  export ZONE=ZONE
  ```


### 🖥️ Tarefa 1: Criar Instância no Console
Criação de uma VM com as seguintes especificações:

Campo	Valor
Nome	gcelab
Região	Ex: us-central1
Zona	Ex: us-central1-a
Série	E2
Tipo de máquina	e2-medium (2vCPU, 4GB RAM)
Disco	Debian GNU/Linux 11 - 10GB
Firewall	Permitir tráfego HTTP

### 🌐 Tarefa 2: Instalar Servidor NGINX
Comandos para atualizar o sistema e instalar o NGINX:

bash
```
sudo apt-get update
sudo apt-get install -y nginx
ps auwx | grep nginx
```

Acesse a página padrão via IP externo da VM:

cpp```
http://<EXTERNAL_IP>
```

### 💻 Tarefa 3: Criar VM com gcloud
Comando para criar nova instância via terminal:

bash
```
gcloud compute instances create gcelab2 --machine-type=e2-medium --zone=$ZONE
```

Verifique o progresso e conecte-se via SSH:

bash
```
gcloud compute ssh gcelab2 --zone=$ZONE
```

### 🧠 Conhecimentos Reforçados
- Diferença entre zona e região

- Ativação e uso de Cloud Shell

- Comandos da CLI gcloud

- Gerenciamento de firewall

- Instalação de servidor web

- SSH direto pelo navegador e pela CLI

### 🛠️ Tecnologias e Ferramentas
- Google Cloud Platform

- Compute Engine (VMs)

- Cloud Shell

- gcloud CLI

- Debian Linux

- Servidor Web NGINX

### 📚 Referências
- Documentação do Compute Engine

- Regiões e Zonas - GCP

- Documentação do Cloud Shell

- gcloud CLI Overview

### 🚀 Objetivo

- Este laboratório é ideal para quem deseja:

- Aprender a criar e configurar VMs no GCP

- Utilizar comandos da gcloud CLI

- Instalar e testar servidores Web em ambientes em nuvem