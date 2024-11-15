#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Set variables from input arguments
PROJECT_TYPE="$1"
PROJECT_PATH="$2"

# Navigate to the project directory
cd "$PROJECT_PATH"

# Run tests based on the project type
if [ "$PROJECT_TYPE" == "maven" ]; then
    echo "Running Maven tests in ${PROJECT_PATH}..."
    mvn test
elif [ "$PROJECT_TYPE" == "gradle" ]; then
    echo "Running Gradle tests in ${PROJECT_PATH}..."
    gradle test
else
    echo "Unsupported project type: ${PROJECT_TYPE}"
    exit 1
fi
