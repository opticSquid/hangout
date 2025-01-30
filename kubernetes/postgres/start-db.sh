#!/bin/bash
kubectl create namespace persistance
kubectl apply -f k8s-secret.yaml
kubectl apply -f k8s-statefulset.yaml
kubectl apply -f k8s-service.yaml