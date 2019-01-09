#! /bin/bash

kubeadm_dir="/home/dmaiocchi/bin/kubeadm-dev"
kubeadm_playground="$GOPATH/src/k8s.io/kubeadm/vagrant/kubeadm-playground"

# Deploy in multi-cluster setup
export KUBEADM_PLAYGROUND_SPEC=$kubeadm_dir
$kubeadm_playground start

# deploy development k8s binary of kubeadm
$kubeadm_playground deploy --binary ~/go/src/github.com/kubernetes/kubernetes/_output/bin/kubeadm
