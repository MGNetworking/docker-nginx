#!/bin/bash

echo "lancement conteneur NGINX-Dev"

docker compose up -d
docker compose logs -f