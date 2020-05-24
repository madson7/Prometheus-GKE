```
kubectl create configmap prometheus-configmap --from-file=C:\Users\Bull\Documents\monitoring-ks8\prometheus\config\prometheus.yml --namespace=monitoring
kubectl create -f C:\Users\Bull\Documents\monitoring-ks8\prometheus\prometheus-volumes.yml
kubectl create -f C:\Users\Bull\Documents\monitoring-ks8\prometheus\prometheus-deploy.yml
```