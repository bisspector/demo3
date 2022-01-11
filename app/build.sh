echo "REPO_REGION= ${REPO_REGION}"
echo "REPO_URL:TAG= ${REPO_URL}:${TAG}"
echo "Logging in to ECR in Docker"
aws ecr get-login-password --region $REPO_REGION | docker login --username AWS --password-stdin $REGISTRY_ID.dkr.ecr.$REPO_REGION.amazonaws.com
echo "Building Docker container..."
docker build -t $REPO_URL:$TAG -f ./Dockerfile .
echo "Pushing..."
docker push $REPO_URL:$TAG
