#!/bin/bash

kubectl config use-context k8s
kubectl apply -f ~/k8s-manifests/istio-system/0.namespace-preparation/0.namespace.yaml
kubectl apply -f ~/k8s-manifests/istio-system/0.namespace-preparation/1.storageClass.yaml
kubectl apply -f ~/k8s-manifests/istio-system/0.namespace-preparation/2.pvc.yaml

kubectl patch storageclass infra-server-nfs-server-istio -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

