#!/bin/bash

export IFS=","

cat /home/warda/Documents/script/job9/Shell_Userlist.csv | while read Id Prenom Nom Mdp Role

 do
  sudo groupdel $Prenom-$Nom
  sudo useradd $Prenom-$Nom
   echo "$Prenom-$Nom:$Mdp" | sudo chpasswd
  sudo usermod -u $Id $Prenom-$Nom
 if [[ "$Role" =~ .*Admin.* ]]
 then
sudo adduser $Prenom-$Nom sudo
sudo adduser $Prenom-$Nom adm
else 
echo "dfjs"
fi
done

