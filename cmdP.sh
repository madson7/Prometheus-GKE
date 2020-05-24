
kubectl create -f C:\Users\Bull\Documents\monitoring-ks8\config\account.yaml
kubectl create configmap prometheus-configmap --from-file=C:\Users\Bull\Documents\monitoring-ks8\prometheus\config\prometheus.yml --namespace=monitoring
kubectl create -f C:\Users\Bull\Documents\monitoring-ks8\prometheus\prometheus-volumes.yml
kubectl create -f C:\Users\Bull\Documents\monitoring-ks8\prometheus\prometheus-deploy.yml


kubectl get configmap -n monitoring
kubectl describe configmap prometheus-configmap -n monitoring

kubectl get deployment -n monitoring

kubectl describe pods -n monitoring

kubectl delete namespace monitoring


kubectl get pods -n monitoring

kubectl create -f

kubectl expose pod

kubectl get deployment

kubectl delete deployments

kubectl get services

kubectl get pods

minikube service list

kubectl scale deployment contagem-deployment --replicas=20

