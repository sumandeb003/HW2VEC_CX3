#!/bin/bash
#PBS -l select=1:ncpus=2:mem=10gb
#PBS -l walltime=72:00:00

eval "$(~/miniconda3/bin/conda shell.bash hook)"
conda activate env4wget

wget -r http://205.174.165.80/IOTDataset/CICIoMT2024/Dataset/