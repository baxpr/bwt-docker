#!/usr/bin/env bash
#
# Grab the BWT only, from a specific commit

commit=d56719a
url=https://github.com/weikanggong/Resting-state-fMRI-preprocessing/archive/${commit}.zip
wget -O rsfp.zip "${url}"
unzip rsfp.zip
mv Resting-state-fMRI-preprocessing-*/BrainWavelet .
rm -fr Resting-state-fMRI-preprocessing-* rsfp.zip
