set -e

docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t productiveme/meteor ./image
docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t productiveme/meteor:root ./root-image

semantic-release --debug
