FROM ubuntu:18.04
RUN apt update
RUN apt install -y git
RUN apt install wget
RUN apt install unzip
RUN mkdir terraform
RUN cd terraform
RUN wget https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_linux_amd64.zip
RUN echo $PATH
RUN unzip terraform_1.3.5_linux_amd64.zip -d /usr/local/bin
RUN ls -l /usr/local/bin
RUN terraform -version

RUN apt-get install ca-certificates curl apt-transport-https lsb-release gnupg
