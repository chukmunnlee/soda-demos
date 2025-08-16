#!/bin/bash
kubectl port-forward svc/argocd-server -nargocd 8443:443
