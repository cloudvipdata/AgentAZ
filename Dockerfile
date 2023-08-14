FROM ubuntu:18.04
RUN apt update
RUN apt install -y git
RUN mkdir terraform
RUN cd terraform
RUN git clone https://github.com/hashicorp/terraform.git \
    git checkout v${TERRAFORM_VERSION} \
    /bin/bash scripts/build.sh
