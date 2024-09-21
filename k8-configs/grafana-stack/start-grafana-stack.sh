#!/bin/bash
kubectl create namespace monitoring
# create grafna-image-render-plugin deployment
kubectl apply -f k8s-grfana-image-render-deployment.yaml
# create grafna-image-render-plugin service
kubectl apply -f k8s-grfana-image-render-service.yaml
#install mimir
helm install grafana-mimir --namespace monitoring oci://registry-1.docker.io/bitnamicharts/grafana-mimir > mimir.log
# install prometheus
helm install prometheus --values prometheus.yaml --namespace monitoring oci://registry-1.docker.io/bitnamicharts/prometheus > prometheus.log
# install loki
helm install loki --values loki.yaml --namespace monitoring oci://registry-1.docker.io/bitnamicharts/grafana-loki > loki.log
# install tempo
helm install tempo --namespace monitoring oci://registry-1.docker.io/bitnamicharts/grafana-tempo > tempo.log
# install grafana
helm install grafana --values grafana.yaml --namespace monitoring oci://registry-1.docker.io/bitnamicharts/grafana > grafana.log