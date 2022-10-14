#!/bin/bash
for i in {1..10}
do
  if [[ "$i" == '11' ]]
  then
    continue
  fi
  echo "Je suis un script qui arrive à faire une boucle $i"
done


