
# 🚀 Google Cloud Computing Foundations — GKE Lab

Este repositório documenta as etapas e comandos usados no laboratório de criação, configuração e implantação de um cluster Kubernetes no **Google Kubernetes Engine (GKE)** como parte do programa [Google Cloud Computing Foundations Certificate](https://www.cloudskillsboost.google/paths/36).

## 🧠 Objetivos do Lab

- Definir zona e região padrão no Google Cloud.
- Criar um cluster do GKE com `gcloud`.
- Autenticar com o cluster.
- Implantar um aplicativo conteinerizado usando `kubectl`.
- Expor o aplicativo com um serviço `LoadBalancer`.
- Verificar a aplicação no navegador.
- Excluir o cluster ao final do experimento.

---

## ⚙️ Comandos Utilizados

### 1. Configurar região e zona padrão
```bash
gcloud config set compute/region us-east5
gcloud config set compute/zone us-east5-c
```

### 2. Criar o cluster no GKE
```bash
gcloud container clusters create \
  --machine-type=e2-medium \
  --zone=us-east5-c \
  lab-cluster
```

### 3. Autenticar com o cluster
```bash
gcloud container clusters get-credentials lab-cluster
```

### 4. Implantar o aplicativo `hello-app`
```bash
kubectl create deployment hello-server \
  --image=gcr.io/google-samples/hello-app:1.0
```

### 5. Expor o aplicativo via Load Balancer
```bash
kubectl expose deployment hello-server \
  --type=LoadBalancer \
  --port 8080
```

### 6. Obter o IP externo do serviço
```bash
kubectl get service
```

Acesse o app no navegador substituindo `[EXTERNAL-IP]`:
```
http://[EXTERNAL-IP]:8080
```

---

## 🧼 Excluir o cluster

Ao fim do laboratório:
```bash
gcloud container clusters delete lab-cluster
```

Confirme com `Y` quando solicitado.

---

## 📚 Recursos Úteis

- [Documentação do GKE](https://cloud.google.com/kubernetes-engine/docs)
- [Comandos do kubectl](https://kubernetes.io/docs/reference/kubectl/)
- [Cloud Shell do Google Cloud](https://cloud.google.com/shell)

---

## 📜 Licença

Este repositório é apenas para fins educacionais e segue os termos de uso do Google Cloud Skills Boost.
