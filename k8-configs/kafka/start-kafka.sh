#!/bin/bash
kubectl create namespace persistance
helm install kafka --namespace persistance --values kafka.yaml oci://registry-1.docker.io/bitnamicharts/kafka > kafka.log
helm repo add kafbat-ui https://kafbat.github.io/helm-charts
helm install kafka-ui --namespace persistance --values kafka-ui.yaml kafbat-ui/kafka-ui > kafka-ui.log
