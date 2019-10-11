.PHONY: all

build:
	docker build -t recap/globus-connect .

run: build
	docker run -d --net=host --volume=${VOLUME} -e EPKEY=${EPKEY} -e RESTRICT_PATH=${RESTRICT_PATH} recap/globus-connect

push: build
	docker push recap/globus-connect

