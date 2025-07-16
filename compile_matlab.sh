#!/bin/sh

# Working dir
WD=$(pwd)

# Add Matlab to the path on the compilation machine
export MATLABROOT=~/MATLAB/R2023a
export PATH=${MATLABROOT}/bin:${PATH}

# Compile in matlab
mcc -m -C -v matlab_entrypoint.m \
    -N \
    -a BrainWavelet \
    -d bin

# We grant lenient execute permissions to the matlab executable and runscript so
# we don't have hiccups later.
chmod go+rx "${WD}"/bin/matlab_entrypoint
chmod go+rx "${WD}"/bin/run_matlab_entrypoint.sh

