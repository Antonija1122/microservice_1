docker build -t antonijaa/service1:latest -t antonijaa/service1:$TAG -f ./service1/Dockerfile ./service1

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push antonijaa/service1:latest

docker push antonijaa/service1:$TAG


