#!/bin/bash
set -e

# Update packages
sudo apt-get update -y

# Install dependencies
sudo apt-get install -y curl wget apt-transport-https gnupg2 conntrack

# Install kubectl
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

echo "✅ kubectl and Minikube installed successfully!"

