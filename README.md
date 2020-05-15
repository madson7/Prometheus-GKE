# monitoring-ks8

## Infrastructure

- Linux Server
    - Master
    - Workers
- Mikrotik
- Switch layer 2

## Installing Docker

Docker is required on all linux servers
```
curl -fsSL https://get.docker.com | sh
```
## Installing kubenetes

Kubenetes is required on all linux servers

https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
```
apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl
```
##

Starting kubeadm on the linux master server
```
kubeadm init
```
