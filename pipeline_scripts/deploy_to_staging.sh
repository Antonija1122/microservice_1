#projekti, ista stvar bi bila za razlicite env npr. --namespace=project1-dev
kubectl apply -f ./k8s/namespaces/project3-stg.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project3-stg
kubectl apply -f ./k8s/service1-deployment.yaml --namespace=project3-stg
kubectl apply -f ./k8s/ingress/ingress-service-project3-stg.yaml  --namespace=project3-stg

kubectl apply -f ./k8s/namespaces/project4-stg.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project4-stg
kubectl apply -f ./k8s/service1-deployment.yaml  --namespace=project4-stg
kubectl apply -f ./k8s/ingress/ingress-service-project4-stg.yaml  --namespace=project4-stg

#impertive set image
kubectl set image deployments/service1-deployment service1=antonijaa/service1:$TAG --namespace=project3-stg
kubectl set image deployments/service1-deployment service1=antonijaa/service1:$TAG --namespace=project4-stg
