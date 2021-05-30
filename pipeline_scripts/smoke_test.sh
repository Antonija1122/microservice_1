curl -v -X POST http://$(minikube ip)/project3-stg/service1
curl -v -X POST http://$(minikube ip)/project4-stg/service1

curl -v -X POST --data "neki string "  http://$(minikube ip)/project3-stg/service1
curl -v -X POST --data "neki string "  http://$(minikube ip)/project4-stg/service1

curl -v -X POST --data 'https://linuxize.com/post/curl-post-request/' http://$(minikube ip)/project3-stg/service1
curl -v -X POST --data 'https://linuxize.com/post/curl-post-request/' http://$(minikube ip)/project4-stg/service1
