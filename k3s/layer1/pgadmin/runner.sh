# !/bin/bash

helm repo add runix https://helm.runix.net
helm repo update
helm upgrade --install pgadmin4 runix/pgadmin4 -f values.yaml --namespace layer1
