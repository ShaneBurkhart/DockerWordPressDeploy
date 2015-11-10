SHELL=bash

all: build

build:
	sudo docker build -t shaneburkhart/wordpress -f Dockerfile.wordpress .
	sudo docker push shaneburkhart/wordpress
	sudo docker build -t shaneburkhart/mysql -f Dockerfile.mysql .
	sudo docker push shaneburkhart/mysql

swap:
	sudo fallocate -l 4G /swapfile
	sudo chmod 600 /swapfile
	sudo mkswap /swapfile
	sudo swapon /swapfile
	echo -e "/swapfile\tnone\tswap\tsw\t0\t0" | sudo tee -a /etc/fstab
