# 🚀 Google Cloud Storage: Criando e Gerenciando Buckets

Este repositório contém os comandos e instruções utilizados no laboratório prático **"Google Cloud Storage: Criando e Gerenciando Buckets"**, parte do programa de treinamento da [Google Cloud Skills Boost](https://www.cloudskillsboost.google/).

## 🧠 Objetivo

Aprender a:

- Criar buckets no Cloud Storage
- Fazer upload e download de objetos
- Organizar arquivos em pastas dentro do bucket
- Tornar objetos públicos
- Remover permissões e excluir objetos

---

## 📋 Pré-requisitos

- Conta no Google Cloud Platform (GCP)
- Projeto ativo no console
- Cloud Shell habilitado

---

## 📌 Comandos utilizados

> ⚠️ Substitua `SEU_BUCKET_NOME` por um nome **único e válido**.

```bash
# Criar um bucket
BUCKET_NAME=SEU_BUCKET_NOME
gcloud storage buckets create gs://$BUCKET_NAME

# Fazer download de uma imagem localmente
wget https://upload.wikimedia.org/wikipedia/commons/0/0f/Ada_Lovelace_portrait.jpg -O ada.jpg

# Upload da imagem para o bucket
gcloud storage cp ada.jpg gs://$BUCKET_NAME

# Fazer download da imagem do bucket
gcloud storage cp gs://$BUCKET_NAME/ada.jpg .

# Copiar a imagem para uma pasta dentro do bucket
gcloud storage cp gs://$BUCKET_NAME/ada.jpg gs://$BUCKET_NAME/image-folder/ada.jpg

# Listar conteúdo do bucket
gcloud storage ls gs://$BUCKET_NAME

# Listar conteúdo da pasta
gcloud storage ls gs://$BUCKET_NAME/image-folder/

# Ver detalhes de um objeto
gcloud storage ls -l gs://$BUCKET_NAME/ada.jpg

# Tornar o objeto público
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/ada.jpg

# Remover o acesso público
gsutil acl ch -d AllUsers gs://$BUCKET_NAME/ada.jpg

# Excluir o objeto principal
gcloud storage rm gs://$BUCKET_NAME/ada.jpg

# Excluir o objeto da pasta
gcloud storage rm gs://$BUCKET_NAME/image-folder/ada.jpg
```

---

## 🌐 Link público

Após tornar a imagem pública, você poderá acessá-la via:

```
https://storage.googleapis.com/SEU_BUCKET_NOME/ada.jpg
```

---

## 👩‍💻 Curiosidade

> Ada Lovelace é considerada a **primeira programadora da história**, tendo criado um algoritmo para a máquina analítica de Charles Babbage no século XIX.

---

## 🧼 Limpeza (opcional)

Caso deseje excluir o bucket completamente após os testes:

```bash
gcloud storage buckets delete gs://$BUCKET_NAME
```

---

## 📚 Referência

- [Documentação oficial do Cloud Storage](https://cloud.google.com/storage/docs)
- [Skills Boost Lab](https://www.cloudskillsboost.google/)
