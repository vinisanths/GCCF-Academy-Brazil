# Definir região e zona padrão do Compute
gcloud config set compute/region us-east5
gcloud config set compute/zone us-east5-c

# Criar um cluster do GKE
gcloud container clusters create --machine-type=e2-medium --zone=us-east5-c lab-cluster

# Obter credenciais de autenticação do cluster
gcloud container clusters get-credentials lab-cluster

# Criar uma implantação do aplicativo hello-app
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0

# Expor o serviço com LoadBalancer
kubectl expose deployment hello-server --type=LoadBalancer --port 8080

# Verificar o serviço criado
kubectl get service
