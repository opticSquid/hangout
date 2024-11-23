#!/bin/bash
kubectl apply -f k8s-hangout-auth-service-pv.yaml
kubectl apply -f k8s-hangout-auth-service-pvc.yaml
kubectl apply -f k8s-hangout-auth-service-secret.yaml
kubectl apply -f k8s-hangout-auth-service-configMap.yaml
kubectl apply -f k8s-hangout-auth-service-deployment.yaml
kubectl apply -f k8s-hangout-auth-service-service.yaml
