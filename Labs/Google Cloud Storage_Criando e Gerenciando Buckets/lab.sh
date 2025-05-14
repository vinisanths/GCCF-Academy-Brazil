# Tarefa 1: Criar um bucket
BUCKET_NAME=SEU_BUCKET_NOME
gcloud storage buckets create gs://$BUCKET_NAME

# Tarefa 2: Fazer upload da imagem ada.jpg
wget https://upload.wikimedia.org/wikipedia/commons/0/0f/Ada_Lovelace_portrait.jpg -O ada.jpg
gcloud storage cp ada.jpg gs://$BUCKET_NAME

# Tarefa 3: Baixar a imagem do bucket
gcloud storage cp gs://$BUCKET_NAME/ada.jpg .

# Tarefa 4: Copiar a imagem para uma pasta no bucket
gcloud storage cp gs://$BUCKET_NAME/ada.jpg gs://$BUCKET_NAME/image-folder/ada.jpg

# Tarefa 5: Listar conteúdo do bucket
gcloud storage ls gs://$BUCKET_NAME

# Listar conteúdo da pasta
gcloud storage ls gs://$BUCKET_NAME/image-folder/

# Tarefa 6: Listar detalhes do objeto
gcloud storage ls -l gs://$BUCKET_NAME/ada.jpg

# Tarefa 7: Tornar o objeto público
gsutil acl ch -u AllUsers:R gs://$BUCKET_NAME/ada.jpg

# Tarefa 8: Remover o acesso público
gsutil acl ch -d AllUsers gs://$BUCKET_NAME/ada.jpg

# Excluir o objeto principal
gcloud storage rm gs://$BUCKET_NAME/ada.jpg

# Excluir o objeto dentro da pasta
gcloud storage rm gs://$BUCKET_NAME/image-folder/ada.jpg
