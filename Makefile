all: build

build:
	sudo docker build -t shaneburkhart/wordpress -f Dockerfile.wordpress .
	sudo docker push shaneburkhart/wordpress
	sudo docker build -t shaneburkhart/mysql -f Dockerfile.mysql .
	sudo docker push shaneburkhart/mysql
