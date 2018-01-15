#!/bin/bash

# cwltool scirpt for running a workflow for epos data download via ogc
cwl-runner ./workflows/epos_accept_url_array_scatter.cwl ./inputs/epos_inputs.yml
