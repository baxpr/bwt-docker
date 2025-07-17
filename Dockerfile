FROM containers.mathworks.com/matlab-runtime:r2023a

COPY bin /opt/BrainWavelet/bin
COPY BrainWavelet /opt/BrainWavelet/src
COPY README.md /opt/BrainWavelet

ENV MATLAB_SHELL=/bin/bash
ENV AGREE_TO_MATLAB_RUNTIME_LICENSE=yes
ENV MATLAB_RUNTIME=/opt/matlabruntime/R2023a
ENV MCR_INHIBIT_CTF_LOCK=1
ENV MCR_CACHE_ROOT=/tmp

# Add pipeline to system path
ENV PATH=/opt/BrainWavelet/bin:${PATH}

# Entrypoint
ENTRYPOINT ["run_matlab_entrypoint.sh","/opt/matlabruntime/R2023a"]
