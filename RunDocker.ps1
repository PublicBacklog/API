docker stop docs
docker rm docs
docker image rm docs-img
docker build -f ./Dockerfile -t docs-img .
docker run -d --name docs -p 3001:3001 docs-img