This step will install NodeJS and MQTT 

## Install NodeJS-v20.9.0

Execute the following command to install Nodejs version 20.9.0

```
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.39.0/install.sh | bash
```{{exec}}

```
source ~/.profile
```{{exec}}

Now, we will install nodejs v20.9.0
```
nvm install 20.9.0
```{{exec}}

Check the installed version of NodeJS and NPM package manager

```
node -v
npm -v
```{{exec}}
