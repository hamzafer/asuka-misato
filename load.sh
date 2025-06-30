#!/bin/bash
# filepath: load_env.sh

# Clear any previously loaded modules
module purge

# Load required modules
module load Anaconda3/2024.02-1
module load CUDA/12.4.0

# Activate the conda environment
source activate /cluster/home/akmarala/asuka_flux

echo "Environment loaded successfully!"
echo "Current environment: $CONDA_DEFAULT_ENV"
echo ""
echo "To deactivate when done, use: conda deactivate"
