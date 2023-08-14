FROM ubuntu:18.04
RUN apt update
RUN apt install -y git
RUN mkdir terraform
RUN cd terraform
RUN apt install  software-properties-common gnupg2 curl
RUN curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
RUN sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
RUN sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN sudo apt install terraform
RUN terraform --version
