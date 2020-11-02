# Prometheus-gke

![](img/monitoring.png)

This repository uses some monitoring tools in a modular way to collect metrics and logs from network, hosts, containers and applications.

## Infrastructure

- Google Cloud
    - Instâncias VM
    - Docker
    - Kubernetes
- Concentrator Mikrotik
    - PPPoE
    - DHCP
- Exporters
    - Mikrotik
    - Linux
    - Services

## Services e Application

- Prometheus
- Consul
- Grafana

Cloned the repository
```
> git clone https://github.com/madson7/monitoring-k8s.git
> cd monitoring-k8s
```

## Kubernetes Gcloud

![](img/kubernetes.png)

```
> kubectl apply -f config\
> kubectl apply -f prometheus\
> kubectl apply -f consul\
> kubectl apply -f grafana\
```
As we are using NodePort, we will expose the same
```
> gcloud compute firewall-rules create NAME --allow tcp:Port
```

## Mikrotik Config

Create a user on the device that has API and read-only access.
```
# /user group add name=prometheus policy=api,read,winbox
```

Create the user to access the API via.
```
# /user add name=prometheus group=prometheus password=12345678
```
## Consul Config
```
> curl -T consul\config\ping-01.json http://IP-consul:Port/v1/agent/service/register

> curl -T consul\config\mikrotik-01.json http://IP-consul:Port/v1/agent/service/register

> curl -T consul\config\linux-01.json http://IP-consul:Port/v1/agent/service/register
```

## Configuration of Node Exporters on linux server
```
# ./prometheus/node-exporter/mikroti/kmikrotik-exporter -config-file prometheus/node-exporter/mikroti/config.yaml

# ./prometheus/node-exporter/ping/ping_exporter --config.path prometheus\node-exporter\ping\ping.yml --web.listen-address=":9101"

# ./prometheus/node-exporter/exporter_linux --web.listen-address=":9100"
```



Falta muito kkk
