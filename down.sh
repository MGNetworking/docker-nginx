#!/bin/bash


image="nginx"

delete_conteneur() {
  # suppression de l'images conteneuriser
  docker rmi $image
  result=$(docker images -f "reference=$image")

  # verification le code de retour de la suppression de l'image
  # if [[ $result != "" ]]; then
  if [[ $? -eq 0 ]]; then
    echo "L'images : $image a bien été supprimer "
  else
    echo "L'images : $image n'a pas été supprimer "
  fi
}


echo "Suppression du conteneur NGINX-Dev"

docker compose down
docker container ls -a

delete_conteneur