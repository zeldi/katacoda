version=v3.13.0
curl -L -o kubebuilder https://github.com/kubernetes-sigs/kubebuilder/releases/download/${version}/kubebuilder_$(go env GOOS)_$(go env GOARCH)
chmod +x kubebuilder && mv kubebuilder /usr/local/bin/

echo "Install/Update go"
wget https://go.dev/dl/go1.20.11.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.11.linux-amd64.tar.gz
go version
rm go1.20.11.linux-amd64.tar.gz


echo "make working directory"
mkdir -p src
cd ./src
clear

echo "Creating GOPATH directory"
mkdir -p /root/go/{bin,pkg,src};
echo "export GOPATH=/root/go" >> ~/.bashrc
source ~/.bashrc
clear 
echo "\$GOPATH variable is set to ${GOPATH}"
