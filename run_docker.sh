#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t mlstack .

# Step 2: 
# List docker images
docker ps

# Step 3: 
# Run flask app
docker run --name mlstack -p 8000:80 mlstack
