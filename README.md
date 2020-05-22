# monitoring-ks8

## Infrastructure

- Linux Server
    - docker
    - kubernetes
        - Master
        - Workers
- Mikrotik
    - PPPoE
    - DHCP
    - VPN
- Switch layer 2

```
hostname name
echo name > /etc/hostname
```

## Installing Docker

Docker is required on all linux servers
```
curl -fsSL https://get.docker.com | sh
```
Set up the Docker daemon
```
cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF
```
```
mkdir -p /etc/systemd/system/docker.service.d
```
Restart Docker
```
systemctl daemon-reload
systemctl restart docker

```
## Installing kubenetes

Kubenetes is required on all linux servers

https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
```
apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl
```
##

Starting kubeadm on the linux master server
```
swapoff -a

cat > /etc/modules-load.d/k8s.conf <<EOF
br_netfilter
ip_vs
ip_vs_rr
ip_vs_sh
ip_vs_wrr
nf_conntrack_ipv4
EOF


kubeadm init
```


