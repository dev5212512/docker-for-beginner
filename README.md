# docker-for-beginner
[Basic of dockers] Notes from https://www.youtube.com/watch?v=pTFZFxd4hOI

# How to copy public key to the clipboard
# In Mac we can use pbcopy < pub file
# But linux doesnot comes with pbcopy, but we can use xclip

sudo apt-get install xclip -y
nano ~/.bashrc
alias pbcopy=’xclip -selection clipboard’
source ~/.bashrc

pbcopy < ~/.ssh/[filename].pub 
# -------------------------------------------------------------------
# How to clone a github repo using ssh key
# Go to .shh folder

ssh-keygen -t rsa
# And when ask provide a unique name so it doesnot overwrites the existing keys
pbcopy < docker-for-beginner.pub 

git config user.name [name]
git config user.email [email]

# Head to https://github.com/settings/keys
# add new ssh key and just paste it
# Clone into repo via ssh
