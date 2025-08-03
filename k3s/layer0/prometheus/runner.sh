#!/bin/bash
helm repo add prometheus https://prometheus-community.github.io/helm-charts
helm upgrade --install prometheus prometheus/prometheus --namespace layer0 --values values.yaml
