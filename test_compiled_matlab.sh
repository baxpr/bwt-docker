export PATH=$(pwd)/bin:$PATH

run_matlab_entrypoint.sh \
    /home/rogersbp/MATLAB/R2023a \
    WaveletDespike \
    $(pwd)/INPUTS/fmri.nii \
    $(pwd)/OUTPUTS/ctest

