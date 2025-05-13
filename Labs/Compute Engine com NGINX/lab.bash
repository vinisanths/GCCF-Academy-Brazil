gcloud config set compute/region REGION
export REGION=REGION
export ZONE=ZONE

sudo apt-get update
sudo apt-get install -y nginx
ps auwx | grep nginx

gcloud compute instances create gcelab2 --machine-type=e2-medium --zone=$ZONE

gcloud compute ssh gcelab2 --zone=$ZONE
