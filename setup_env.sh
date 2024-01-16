#!/bin/bash

# Check if the environment.yaml file exists
if [ ! -f "environment.yaml" ]; then
    echo "Error: environment.yaml file not found."
    exit 1
fi

# Create the Conda environment
echo "Creating Conda environment from environment.yaml..."
conda env create -f environment.yaml

if [ $? -eq 0 ]; then
    echo "Conda environment created successfully."
else
    echo "Error: Failed to create Conda environment."
    exit 1
fi
