FROM ubuntu:latest
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install -y ansible python-pip
CMD [ "ansible-playbook", "src/init.yml", "-vvv" ]
#CMD /usr/local/bin/shell.sh ; sleep infinity