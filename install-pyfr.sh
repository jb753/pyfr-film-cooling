#!/bin/bash
# This script installs PyFR on the Wilkes2 cluster
# JB Oct 2020
module load python/3.8
python3 -m venv ~/pyfr-env
source ~/pyfr-env/bin/activate
pip install pyfr pycuda
deactivate

echo '# Command to load pyfr' >> ~/.bashrc
echo 'alias activate-pyfr="source ~/pyfr-env/bin/activate && module load metis-5.1.0-gcc-5.4.0-63vpksi"' >> ~/.bashrc
