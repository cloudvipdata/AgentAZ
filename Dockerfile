FROM ubuntu:18.04
RUN apt update
RUN apt install -y git
RUN mkdir terraform
RUN cd terraform
RUN apt install wget
RUN wget https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip
