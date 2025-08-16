#!/bin/bash
ADMIN_PASSWORD="$(kubectl get secret/argocd-initial-admin-secret -nargocd -ojsonpath="{.data.password}" | base64 -d -)"
echo $ADMIN_PASSWORD

kubectl argo cd login localhost:8443 \
  --username=admin --password=$ADMIN_PASSWORD \
  --insecure --grpc-web
