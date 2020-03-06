FROM ubuntu:latest
#Add common packages
RUN apt-get update && apt-get install -y software-properties-common curl
#Add ansible PPA
RUN apt-add-repository --yes --update ppa:ansible/ansible
#Add Docker apt key
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
#Add Docker repo
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt-get update
#Install ansible packages and used librairies
RUN apt-get install -y ansible python-pip docker-ce-cli
CMD [ "ansible-playbook", "src/init.yml" ]
#CMD /usr/local/bin/shell.sh ; sleep infinity