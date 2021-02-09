#!/bin/bash

kubectl patch storageclass infra-server-nfs-server-istio -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'