# science-service
Deployable Science Service using Jupyter and CWL



docker build -t sci-serv docker/
docker run -it -p 8888:8888 sci-serv 

bash test/run_workflow.sh 
