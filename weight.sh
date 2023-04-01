#!/bin/bash

# Get the model name from the first command-line argument
model_name=$1

# Rename the existing model directory
mv "models/${model_name}" "models/${model_name}_orig"

# Create a new model directory
mkdir "models/${model_name}"

# Run the reshard script to split the model shards
python3 reshard.py 1 "models/${model_name}_orig" "models/${model_name}"