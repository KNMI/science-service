#!/bin/bash

# build a docker image of a scipy data science enabled jupyter notebook using CWL workflows.
docker build -t sci-serv -f docker/dockerfile-jupyter-datasci-CWL .
