# science-service
Deployable Science Service using Jupyter and CWL

Scripts run veriations of the following too commands:
```
docker build t sci-serv docker/
docker run -it -p 8888:8888 sci-serv
```
The docker commands are packaged in:
```
bash build-docker.sh
```
To run a docker instance use:
```
bash run-docker.sh
```
The container is accessable using a jupyter notebook. Also available as a datascience enabled instance, with an alternate script.

Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=6a287b208b22105f161bfaea8ab8b4725b0174b73d8cd343

In Jupyter run the following script to see CWL running in the container.
```
bash science-service/run_workflow.sh 
```
The container can be further staged for use in EPOS with an execution of a cwl input at run time:
```
 ./exec-docker.sh sci_serv_container_name inputs.yml
 ```
Note: To run the container service via the exec script requires a valid container instance and a input file containing multiple OGC Service links.



#mihajlov@pc150396 science-service]$ docker images

|REPOSITORY                                        |TAG               |IMAGE ID            |SIZE|
|-|-|-|-|
|sci-serv                                          |latest            |7b1461198760        |6.34 GB|
|docker.io/jupyter/datascience-notebook            |latest            |db148b62d457        |6.25 GB|
|docker.io/jupyter/minimal-notebook                |latest            |c4c8a0c902ee        |2.72 GB|
|docker.io/ubuntu                                  |14.04             |67759a80360c        |221 MB|
|docker.io/commonworkflowlanguage/cwltool_module   |latest            |1a55ee22efea        |81 MB|
