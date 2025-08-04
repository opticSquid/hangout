# !bin/bash
kubectl create namespace layer2
kubectl create -f 'https://strimzi.io/install/latest?namespace=layer2' -n layer2
kubectl apply -f k8s-kafka-cluster.yaml
kubectl apply -f k8s-kafka-broker.yaml
kubectl apply -f k8s-kafka-controller.yaml