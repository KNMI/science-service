FROM commonworkflowlanguage/cwltool_module

LABEL MAINTAINER=prov@knmi

ENV NB_USER=mihajlov \
	NB_UID=1000 \
	NB_GID=100
	
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

#WORKDIR /home/$NB_USER

WORKDIR /home/$NB_USER/science-service

ENV HOME=/home/$NB_USER

ADD fix-permissions /usr/local/bin/fix-permissions
RUN useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \
	fix-permissions $HOME

USER $NB_USER

RUN echo 'jupyter notebook' >> docker_entry.sh

# Container protection via TINI
# https://github.com/krallin/tini
# signe binarry option available...
ENV TINI_VERSION v0.16.1
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

CMD bash
#CMD bash docker_entry.sh

