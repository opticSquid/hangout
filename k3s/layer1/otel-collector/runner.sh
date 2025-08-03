# !/bin/bash

kubectl create namespace layer1
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
helm repo update
helm upgrade --install otel-collector open-telemetry/opentelemetry-collector --namespace layer1 --values values.yaml
kubectl apply -f ./service.yaml