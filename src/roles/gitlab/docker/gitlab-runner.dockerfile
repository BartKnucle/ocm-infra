FROM gitlab/gitlab-runner:latest
#Add common packages
RUN apt-get update && apt-get install -y software-properties-common curl
#Install ansible packages and used librairies
RUN apt-get install -y python-pip
#CMD ["/bin/bash"]