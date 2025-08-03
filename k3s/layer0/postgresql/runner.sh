# !/bin/bash

kubectl create namespace layer0
helm repo add cnpg https://cloudnative-pg.github.io/charts
helm upgrade --install cnpg \
  --namespace layer0 \
  --set config.clusterWide=false \
  cnpg/cloudnative-pg

echo "Waiting for 2 minutes to deploy CloudNativePG Controller"
sleep 2m
kubectl apply -f ./k8s-cluster.yaml
echo "Waiting for 2 minutes for the Database cluster to come online"
sleep 2m
cd ./databases
kubectl apply -f ./k8s-authdb.yaml
kubectl apply -f ./k8s-postdb.yaml
kubectl apply -f ./k8s-profiledb.yaml

