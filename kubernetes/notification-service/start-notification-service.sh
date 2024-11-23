#!/bin/bash
kubectl apply -f k8s-hangout-notification-service-configMap.yaml
kubectl apply -f k8s-hangout-notification-service-secret.yaml
kubectl apply -f k8s-hangout-notification-service-deployment.yaml
kubectl apply -f k8s-hangout-notification-service-service.yaml