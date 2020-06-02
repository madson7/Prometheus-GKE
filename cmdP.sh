
kubectl get configmap -n monitoring
kubectl describe configmap prometheus-configmap -n monitoring

kubectl get deployment -n monitoring

kubectl describe pods -n monitoring

kubectl create namespace monitoramento


kubectl get pods -n monitoring

kubectl apply  -f

kubectl expose pod

kubectl get deployment

kubectl delete deployments

kubectl get services

kubectl get pods

minikube service list

kubectl scale deployment prometheus-deploy --replicas=0 -n monitoring

gcloud compute disks list

gcloud compute disks create grafanadisk --size=10gi


kubectl apply -f 



gcloud compute firewall-rules create nodepp --allow tcp:30090




kubectl apply -f C:\Users\Bull\Documents\monitoring-ks8\config\config.yaml
kubectl apply -f C:\Users\Bull\Documents\monitoring-ks8\prometheus\configMap-prometheus.yaml
kubectl apply -f C:\Users\Bull\Documents\monitoring-ks8\prometheus\prometheus-volumes.yaml
kubectl apply -f C:\Users\Bull\Documents\monitoring-ks8\prometheus\prometheus-deployment.yaml