# science-service
Deployable Science Service using Jupyter and CWL

Scripts run veriations of the following too commands:
```
docker build t sci-serv docker/
docker run -it -p 8888:8888 sci-serv
```


In Jupyter run
```
bash science-service/run_workflow.sh 
```

#mihajlov@pc150396 science-service]$ docker images

REPOSITORY                                        |TAG               |IMAGE ID            |SIZE
-|-|-|-|-|-
sci-serv                                          |latest            |7b1461198760        |6.34 GB
docker.io/jupyter/datascience-notebook            |latest            |db148b62d457        |6.25 GB
docker.io/jupyter/minimal-notebook                |latest            |c4c8a0c902ee        |2.72 GB
docker.io/ubuntu                                  |14.04             |67759a80360c        |221 MB
docker.io/commonworkflowlanguage/cwltool_module   |latest            |1a55ee22efea        |81 MB
