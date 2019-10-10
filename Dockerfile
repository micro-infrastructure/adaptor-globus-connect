FROM ubuntu:18.04
RUN apt-get update && apt-get install -y wget python-pip
RUN useradd -m -s /bin/bash gridftp
USER gridftp
WORKDIR /home/gridftp/
RUN wget https://downloads.globus.org/globus-connect-personal/linux/stable/globusconnectpersonal-2.3.9.tgz
RUN tar -zxvf globusconnectpersonal-2.3.9.tgz
RUN ln -s -T globusconnectpersonal-2.3.9 globusconnect
ADD start.sh globusconnect/
ENV PATH="/home/gridftp/globusconnect:${PATH}"
CMD start.sh

