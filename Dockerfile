FROM ubuntu:16.04

MAINTAINER James Byars <jbyars4ku@gmail.com>

RUN apt-get update \
    && apt-get install -y \
		curl \
		git \
		zip \
		openssl \
		vim \
		&& rm -r /var/lib/apt/lists/*

WORKDIR /root/data

COPY . ./home

RUN curl -O https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_linux_amd64.zip
RUN unzip terraform*zip
RUN echo 'export PATH=$PATH:/root/data' > /root/.bashrc

# Generate the key - no passphrase
RUN echo | ssh-keygen -t rsa -P ''

WORKDIR /home