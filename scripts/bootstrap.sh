#!/bin/bash

## Set timezone
echo "========================================="
echo "set timezone as JST"
echo "========================================="
sudo cp /usr/share/zoneinfo/Japan /etc/localtime

## Update
echo "========================================="
echo "Updating.........."
echo "========================================="
sudo yum install -y update

## Install git
echo "========================================="
echo "Start git Installation....."
echo "========================================="
sudo yum install -y git

## Install cfcli 
echo "========================================="
echo "Start cfcli Installation....."
echo "========================================="
curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
sudo mv cf /usr/local/bin
ls -a /usr/local/bin/* |grep cf
echo "========================================="
echo "cfcli was installed!"
echo "API endpoint: https://api.run.pivotal.io"
echo "========================================="

