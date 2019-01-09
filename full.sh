#! /bin/bash

kubeadm_playground="$GOPATH/src/k8s.io/kubeadm/vagrant/kubeadm-playground"

# Deploy in multi-cluster setup
export KUBEADM_PLAYGROUND_SPEC="$PWD"

$kubeadm_playground start

# deploy development k8s binary of kubeadm
$kubeadm_playground deploy --binary ~/go/src/github.com/kubernetes/kubernetes/_output/bin/kubeadm
