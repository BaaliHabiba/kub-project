# First, create node and react apps images
sh redis_react/create_image.sh 
sh redis_node/create_image.sh

# Second, create kub deployments and services
kubectl create -f redis_node/node-redis-deployment.yml
kubectl create -f redis_db/redis-deployment.yml
kubectl create -f redis_react/react-redis-deployment.yml
kubectl create -f redis_node/node-redis-service.yml
kubectl create -f redis_db/redis-service.yml
kubectl create -f redis_react/react-redis-service.yml
