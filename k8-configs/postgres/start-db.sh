#!/bin/bash
kubectl create namespace persistance
kubectl apply -f k8s-postgres-pv.yaml
kubectl apply -f k8s-postgres-pvc.yaml
kubectl apply -f k8s-postgres-secret.yaml
kubectl apply -f k8s-postgres-deployment.yaml
kubectl apply -f k8s-postgres-service.yaml