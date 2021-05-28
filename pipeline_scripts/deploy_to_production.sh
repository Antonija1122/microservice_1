#projekti, ista stvar bi bila za razlicite env npr. --namespace=project1-dev
#deploy to production
kubectl apply -f ./k8s/namespaces/project3-prod.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project3-prod
kubectl apply -f ./k8s/service1-deployment.yaml --namespace=project3-prod
kubectl apply -f ./k8s/ingress/ingress-service-project3-prod.yaml  --namespace=project3-prod

kubectl apply -f ./k8s/namespaces/project4-prod.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project4-prod
kubectl apply -f ./k8s/service1-deployment.yaml  --namespace=project4-prod
kubectl apply -f ./k8s/ingress/ingress-service-project4-prod.yaml  --namespace=project4-prod

#impertive set image
kubectl set image deployments/service1-deployment service1=antonijaa/service1:$TAG --namespace=project3-prod
kubectl set image deployments/service1-deployment service1=antonijaa/service1:$TAG --namespace=project4-prod
