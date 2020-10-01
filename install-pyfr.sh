#!/bin/bash
# This script installs PyFR on the Wilkes2 cluster
# JB Oct 2020
module load python/3.8
python3 -m venv ~/pyfr-env
source ~/pyfr-env/bin/activate
pip install pyfr pycuda
deactivate
