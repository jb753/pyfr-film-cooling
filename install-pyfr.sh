#!/bin/bash
# This script installs PyFR on the Wilkes2 cluster

# JB Oct 2020
module load python/3.8
python3 -m venv ~/pyfr-env
source ~/pyfr-env/bin/activate
pip install pyfr pycuda
deactivate

echo '# Command to load pyfr' >> ~/.bashrc

CMD=$(cat <<'EOF'
. /etc/profile.d/modules.sh &&
module purge &&
module load rhel7/default-gpu &&
module load python/3.8 &&
module load metis-5.1.0-gcc-5.4.0-63vpksi &&
source ~/pyfr-env/bin/activate
EOF
)

echo "alias activate-pyfr='$CMD'" >> ~/.bashrc

source ~/.bashrc
