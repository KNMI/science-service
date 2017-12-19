FROM commonworkflowlanguage/cwltool_module

LABEL MAINTAINER=prov@knmi

ENV NB_USER=mihajlov

# Let's start with some basic stuff.
RUN apt-get update -qq && apt-get install -qqy \
	git \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    python-setuptools

# cwl-runner setup 
# https://github.com/common-workflow-language/cwltool
RUN pip install --upgrade pip && \
	pip install cwlref-runner

# pytoil engine recommended.

# simple jupyter install
# http://jupyter.org/install.html
RUN	pip install jupyter 

EXPOSE 8888

RUN mkdir -p /home/$NB_USER

WORKDIR /home/$NB_USER

RUN mkdir -p /home/$NB_USER/science-service

RUN git clone https://github.com/andrejsim/science-service.git

WORKDIR /home/$NB_USER/science-service

USER $NB_USER

RUN echo 'jupyter notebook --allow-root' >> docker_entry.sh

ENTRYPOINT bash
#ENTRYPOINT bash docker_entry.sh

