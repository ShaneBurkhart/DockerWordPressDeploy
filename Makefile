all: build

build:
	sudo docker build -t shaneburkhart/wordpress -f Dockerfile.wordpress .
	sudo docker push shaneburkhart/wordpress
