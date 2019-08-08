docker stop basic-nginx-docker-container
docker container prune -f
docker build -t basic-nginx-docker .
docker run -d -p 8080:2015 --name basic-nginx-docker-container --env-file env.list basic-nginx-docker
docker logs -f basic-nginx-docker-container