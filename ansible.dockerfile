FROM ubuntu:latest
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install -y ansible python-pip
RUN pip install docker python-gitlab pyapi-gitlab
CMD [ "ansible-playbook", "src/init-gitlab.yml" ]