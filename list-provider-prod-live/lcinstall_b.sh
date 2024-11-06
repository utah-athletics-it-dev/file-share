#!/bin/bash

# Step 8: Docker login
echo "Logging into Docker..."
docker login https://docker.prohibet.com --username "listclient" --password "lclclc323232!"

# Step 9: Set up environment variable
ROOT_PATH="$(pwd)"
export ROOT_PATH="$(pwd)"

# Step 10: Set SSS_ENV_VAR to Credentials under ROOT_PATH
export SSS_ENV_VAR="${ROOT_PATH}/Credentials"

# Step 11: Add to .bashrc
cat <<EOF >>~/.bashrc
export ROOT_PATH="$(pwd)"
export SSS_ENV_VAR="${ROOT_PATH}/Credentials"
EOF
source ~/.bashrc
echo $SSS_ENV_VAR # Verify variable is set

# Step 12: Run Docker Compose
echo "Running Docker Compose..."
cd Application
docker-compose up -d

# Step 13: Access application
echo "Access the application at http://<IP_ADDRESS>:8102"

echo "Done!"