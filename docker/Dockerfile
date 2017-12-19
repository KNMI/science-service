FROM commonworkflowlanguage/cwltool_module

LABEL MAINTAINER=prov@knmi \
      NB_USER=andrej

# Let's start with some basic stuff.
RUN apt-get update -qq && apt-get install -qqy \
	git \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    python-setuptools
    
RUN pip install --upgrade pip && \
	pip install cwlref-runner && \
	pip install jupyter 

RUN mkdir -p /home/$NB_USER/

WORKDIR /home/$NB_USER

RUN mkdir -p /home/$NB_USER/science-service

RUN git clone https://github.com/andrejsim/science-service.git

WORKDIR /home/$NB_USER/science-service

# web based api (dissabled)
#RUN pip install Flask gunicorn
#EXPOSE 5002
#CMD FLASK_APP=flask/flask_web.py flask run --host=0.0.0.0
#RUN echo 'gunicorn -w 9 -b 0.0.0.0:5002 "flask/flask_web:bootstrap_app()" --log-level debug --backlog 0 --timeout 120 --error-logfile error.log --log-file access.log' >> docker_entry.sh 

RUN echo 'jupyter notebook' >> docker_entry.sh

ENTRYPOINT bash #docker_entry.sh

#
# docker build -t sci-serv docker/
# docker run -it sci-serv 
# 
# bash test/run_workflow.sh
# 



