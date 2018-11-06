#!/bin/bash

set -e

cd sqlite


echo "Starting redis service..."
docker-compose up -d redis
>| ./superset/superset.db

# Start Jupyter
echo "Starting Jupyter..."
docker-compose up -d jupyter

# Start Superset
echo "Starting Superset..."
docker-compose up -d superset

echo "Sleeping for 10s"
sleep 10

# Inititalize Demo
docker-compose exec superset superset-init

echo "Navigate to http://localhost:8088 to access Superset"
echo "Navigate to http://localhost:8889 to access Jupyter"
echo -n "Press RETURN to bring down demo"
read down
docker-compose down -v
