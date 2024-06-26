# docker-for-beginner
[Basic of dockers] Notes from https://www.youtube.com/watch?v=pTFZFxd4hOI

# Ultimate Docker Course
1. What is docker?
2. Virtual machines vs Containers
3. Architecture of docker
4. Development workflow

## 1. What is docker?
A platform for building, running and shipping applications in a consistent manner
So, if it works on my machine then it will run the same way on some other machine

## 2. Virtual machines vs Containers
Container: An isolated environment for running an application
Virtual machine: A complete isolated OS [Slow to start as we are using a full-blown OS]
**but** containers are lightweight.

## 3. Docker Architecture
Docker uses client-server architecture
client talks with server also called as docker engine via REST API

## 4. Development workflow
Dockerfile that communicates with our application and container

Dockerfile packages everything into an image 
image can be called as an instance of container

Once we have an image we can push it to a docker registry like docker hub
Docker hub to docker is like github to git [storage for docker images]
just pull the image from docker hub into your machine 
```sh
# Build docker image
docker build -t tag_name .
# . is for instruct the build to file that Dockerfile

docker images
# to list all the built images
docker run tag_name

docker pull that_image
docker run that_image
```

## Push your image to dockerhub

```sh
docker login --username=dev5212512 --password=acess_token
# get access token from https://hub.docker.com/settings/security

docker images

# Tag your container by using container id
docker tag 43a69cee79b3 dev5212512/docker-node
docker push dev5212512/docker-node
```

## Verify

go to https://labs.play-with-docker.com/
```sh
docker pull dev5212512/docker-node
```

## How to iteract with a particular container
```sh
docker run -it container_name
```

## To delete all containers including its volumes
```sh
docker rm -vf $(docker ps -aq)
```

## To delete all the images,
```sh
docker rmi -f $(docker images -aq)
```

# Push code to GitHub with an SSH key
How to copy public key to the clipboard

In Mac we can use pbcopy < pub file

```
# But linux doesnot comes with pbcopy, but we can use xclip
sudo apt-get install xclip -y
nano ~/.bashrc
alias pbcopy=’xclip -selection clipboard’
source ~/.bashrc
pbcopy < ~/.ssh/[filename].pub
```

How to clone a github repo using ssh key

```sh
# Go to .shh folder
ssh-keygen -t rsa
# And when ask provide a unique name so it doesnot overwrites the existing keys
pbcopy < docker-for-beginner.pub 
```

```sh
# Configure user name and email for this particular repository
git config user.name [name]
git config user.email [email]
# Head to https://github.com/settings/keys
# add new ssh key and just paste it
# Clone into repo via ssh
# Push freely
```