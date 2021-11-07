#!/bin/bash

# Estimated 4 minutes (max) per sample @ tasks and -p 60
#SBATCH --time=15:00:00
#SBATCH --job-name=cStcks
#SBATCH --mail-type=ALL
#SBATCH --mail-user=avamariehoffman@gmail.com
#SBATCH --error=cstacks.%j.out
#SBATCH --output=cstacks.%j.out
#SBATCH --partition=shared
#SBATCH --nodes=1
# 24 cores = a single node
#SBATCH --ntasks-per-node=3


# Written by: Ava Hoffman
# Date:       21 October 2021
# Purpose:    Running cstacks to create a set of consensus loci, merging alleles together
# cstacks -P in_path -M popmap [-n num_mismatches] [-p num_threads]

module load gcc
export PATH=$PATH:/home-1/ahoffm31@jhu.edu/code/bin

cstacks -P ~/scratch/stacks/ustacks -M ~/code/cstacks_popmap.txt -n 4 -p 60
