#!/bin/bash
#PBS -l select=1:ncpus=2:mem=10gb
#PBS -l walltime=72:00:00
eval "$(~/miniconda3/bin/conda shell.bash hook)"
conda activate hw2vec_python37_pyg_pygraphviz
cd ~/HW2VEC_CX3/examples
python TrustHub2graph.py --graph_type DFG