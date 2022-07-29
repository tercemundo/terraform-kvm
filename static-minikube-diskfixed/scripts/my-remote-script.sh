cd /home/ubuntu
wget https://raw.githubusercontent.com/mguazzardo/flaskapi/master/docker/install-docker-ce.sh
chmod +x /home/ubuntu/install-docker-ce.sh
sudo /home/ubuntu/install-docker-ce.sh
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install /home/ubuntu/minikube-linux-amd64 /usr/local/bin/minikube
sudo useradd -m mguazzardo -s /bin/bash
echo "mguazzardo:master" | sudo chpasswd
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x /home/ubuntu/kubectl
sudo mv kubectl  /usr/local/bin/

curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2
chmod +x /home/ubuntu/docker-machine-driver-kvm2
sudo mv docker-machine-driver-kvm2 /usr/local/bin/

