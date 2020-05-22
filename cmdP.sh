
kubectl delete namespace monitoramento
kubectl create namespace monitoramento
kubectl get namespace monitoramento

kubectl create configmap prometheus-configmap --from-file=.\Documents\monitoring-ks8\pods\prometheus\config\prometheus.yml --namespace=monitoramento
kubectl get configmap -n monitoramento
kubectl describe configmap prometheus-configmap -n monitoramento
kubectl create -f Documents\monitoring-ks8\pods\prometheus\prometheus-volumes.yml
kubectl create -f Documents\monitoring-ks8\pods\prometheus\prometheus-deploy.yml
kubectl create -f Documents\monitoring-ks8\pods\prometheus\prometheus-service.yml
kubectl get deployment -n monitoramento

kubectl describe pods -n monitoramento




kubectl get pods -n monitoramento

kubectl create -f

kubectl expose pod

kubectl get deployment

kubectl delete deployments

kubectl get services

kubectl get pods

minikube service list

kubectl scale deployment contagem-deployment --replicas=20

