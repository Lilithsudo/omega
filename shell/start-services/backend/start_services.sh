#!/bin/bash

# S'assurez-vous que le script est exécutable
#chmod +x start_services.sh

# Emplacement du fichier docker-compose.yml
DOCKER_COMPOSE_FILE="/home/ec2-user/omega/docker/docker-compose/backend/docker-compose.yml"

# Vérifier si le fichier docker-compose.yml existe
if [ ! -f "$DOCKER_COMPOSE_FILE" ]; then
  echo "Le fichier docker-compose.yml n'a pas été trouvé."
  exit 1
fi

# Arrêter les services avec docker-compose
docker-compose -f "$DOCKER_COMPOSE_FILE" up -d

echo "Les services ont été demarés avec succès."

