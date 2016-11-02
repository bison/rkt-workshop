#!/bin/sh

minikube start --network-plugin=cni \
  --container-runtime=rkt \
  --iso-url=http://storage.googleapis.com/minikube/iso/buildroot/minikube-v0.0.6.iso
