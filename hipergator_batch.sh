#!/bin/bash
#SBATCH --job-name=nextflow4ms-dial_garrett_data # You can change nf_samples to whatever name you want
#SBATCH --mail-type=ALL # Use ALL or NONE
#SBATCH --mail-user=xinsongdu@ufl.edu # Change this to your own email address
#SBATCH --ntasks=20 # Number of CPUs you allocate to your task
#SBATCH --mem=200gb # Number of memory you allocate to your task
#SBATCH --account=djlemas # UFRC account name
#SBATCH --qos=djlemas-b # Which quota of the account you want to use
#SBATCH --time=24:00:00 # Maximum running time of the task
#SBATCH --output=./logs/nextflow4ms-dial%j.log # Log file of the task
pwd; hostname; date

# load modules
ml R
ml nextflow
ml singularity
SINGULARITYENV_TMPDIR=$(pwd)/tmp
export SINGULARITYENV_TMPDIR
TMPDIR=$(pwd)/tmp
export TMPDIR

nextflow main.nf -profile singularity
date