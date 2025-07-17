Wrapper to compile the BrainWavelet toolbox and put it in a Docker container.

Patel AX, Kundu P, Rubinov M, Jones PS, Vértes PE, Ersche KD, Suckling J, Bullmore ET. 
A wavelet method for modeling and despiking motion artifacts from resting-state fMRI 
time series. Neuroimage. 2014 Jul 15;95(100):287-304. doi: 10.1016/j.neuroimage.2014.03.012. 
PMID: 24657353; PMCID: PMC4068300.
https://pmc.ncbi.nlm.nih.gov/articles/PMC4068300/

https://github.com/weikanggong/Resting-state-fMRI-preprocessing/tree/master/BrainWavelet

Warning: The included third_party/NIfTI library is known to be buggy, and this may affect
the correctness of some NIfTI output files, particularly the geometry meta-data.


Usage:

    docker run <binds etc> bwt-docker:<version> <matlabfunction> <function args...>
