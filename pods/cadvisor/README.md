```
kubectl create configmap prometheus-configmap --from-file=.\Documents\monitoring-ks8\pods\prometheus\config\prometheus.yml --namespace=monitoramento
kubectl get configmap -n monitoramento
kubectl describe configmap prometheus-configmap -n monitoramento

kubectl create -f Documents\monitoring-ks8\pods\prometheus\prometheus-volumes.yml

kubectl create -f Documents\monitoring-ks8\pods\prometheus\prometheus-deploy.yml

kubectl create -f Documents\monitoring-ks8\pods\prometheus\prometheus-service.yml
```