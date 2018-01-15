#!/bin/bash

# two arguments required.
echo "execute cwl workflow in"
echo "container: " ${1}
echo "input.yml:" ${2}

# show containers
docker ps

# copy inputs into 
docker cp ${2} ${1}:/home/jovyan/${2}

# execute cwl runner scirpt with input file
docker exec -it ${1} bash -c "cwl-runner science-service/workflows/epos_accept_url_array_scatter.cwl ${2}"

# end