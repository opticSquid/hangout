#!/bin/bash
kubectl create namespace persistance
kubectl apply -f k8s-configMap.yaml
kubectl apply -f k8s-secret.yaml
kubectl apply -f k8s-statefulSet.yaml
kubectl apply -f k8s-service.yaml