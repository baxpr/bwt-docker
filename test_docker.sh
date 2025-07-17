#!/usr/bin/env bash

docker run \
    --mount type=bind,src=$(pwd -P)/INPUTS,dst=/INPUTS \
    --mount type=bind,src=$(pwd -P)/OUTPUTS,dst=/OUTPUTS \
    bwt-docker:test \
    run_matlab_entrypoint.sh \
    /home/rogersbp/MATLAB/R2023a \
    WaveletDespike \
    /INPUTS/fmri.nii \
    /OUTPUTS/ctest
