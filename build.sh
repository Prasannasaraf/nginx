docker stop basic-nginx-docker-container
docker container prune -f
docker build -t basic-nginx-docker .
docker run -d -p 8080:80 --name basic-nginx-docker-container --env-file envlist basic-nginx-docker
docker logs -f basic-nginx-docker-container