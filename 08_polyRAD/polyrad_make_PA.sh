#!/bin/bash

#SBATCH --time=2:00:00
#SBATCH --job-name=pa_polyRAD
#SBATCH --mail-type=ALL
#SBATCH --mail-user=avamariehoffman@gmail.com
#SBATCH --error=pr_pa.%j.out
#SBATCH --output=pr_pa.%j.out
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2


# Written by: Ava Hoffman
# Date:       20 Feb 2023

module load r

Rscript make_polyRAD_PA.R