#!/bin/bash

kubectl create namespace layer1
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install grafana grafana/grafana --namespace layer1
echo "password: "
kubectl get secret --namespace layer1 grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
kubectl -n layer1 port-forward --address 0.0.0.0 svc/grafana 3000:80