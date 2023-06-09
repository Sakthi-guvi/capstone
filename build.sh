#!/bin/bash

image_name=$react
branch=$1
dev=$2

if [ "$1"=="$2" ];
then 
docker build -t $image_name .
docker images
else
	echo "mistakes"
fi

