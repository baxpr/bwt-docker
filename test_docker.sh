#!/usr/bin/env bash

docker run \
    --mount type=bind,src=$(pwd -P)/INPUTS,dst=/INPUTS \
    --mount type=bind,src=$(pwd -P)/OUTPUTS,dst=/OUTPUTS \
    bwt-docker:test \
    WaveletDespike \
    /INPUTS/fmri.nii \
    /OUTPUTS/ctest
