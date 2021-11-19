
DOCKER_USERNAME = valemos
CONTAINER_NAME = alpine_cmake_gtest_image


build: Dockerfile
	sudo docker build -t ${CONTAINER_NAME} - < Dockerfile

upload: build
	sudo docker login -u ${DOCKER_USERNAME} --password-stdin < .docker_token
	sudo docker tag ${CONTAINER_NAME}:latest ${DOCKER_USERNAME}/${CONTAINER_NAME}:latest
	sudo docker push ${DOCKER_USERNAME}/${CONTAINER_NAME}:latest
