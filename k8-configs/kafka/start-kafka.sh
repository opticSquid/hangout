#!/bin/bash
kubectl create namespace persistance
helm install kafka --namespace persistance --values kafka.yaml oci://registry-1.docker.io/bitnamicharts/kafka > start-kafka-output.log