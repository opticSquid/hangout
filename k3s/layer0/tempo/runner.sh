# !/bin/bash

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install tempo grafana/tempo -f single-binary.yaml --namespace=layer0
