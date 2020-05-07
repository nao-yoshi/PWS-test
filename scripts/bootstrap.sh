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

## Install git and wget
echo "========================================="
echo "Start git Installation....."
echo "========================================="
sudo yum install -y git wget

## Install cfcli 
echo "========================================="
echo "Start cfcli Installation....."
echo "========================================="
sudo wget -O /etc/yum.repos.d/cloudfoundry-cli.repo https://packages.cloudfoundry.org/fedora/cloudfoundry-cli.repo
sudo yum install -y cf-cli
ls -a /usr/bin/* |grep cf
echo "========================================="
echo "cfcli was installed!"
echo "API endpoint: https://api.run.pivotal.io"
echo "========================================="

