#!/bin/bash

# Stop and remove any existing Neo4j container
if [ "$(docker ps -aq -f name=neo4j-container)" ]; then
    echo "Stopping and removing existing Neo4j container..."
    docker stop neo4j-container
    docker rm neo4j-container
fi

# Build the Neo4j Docker image
echo "Building the Neo4j Docker image..."
docker build -t neo4j-docker ./neo4j

# Start the Neo4j Docker container in the background using the host network
echo "Starting the Neo4j Docker container..."
docker run --network host --name neo4j-container -d neo4j-docker

# Wait for a few seconds to ensure Neo4j is up and running
sleep 10

# Build the autobloody Docker image
echo "Building the autobloody Docker image..."
docker build -t autobloody-docker ./bloodyAD

# Run the autobloody Docker container interactively using the host network
echo "Entering the autobloody Docker container..."
docker run --network host -it autobloody-docker /bin/bash


