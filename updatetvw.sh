#!/bin/bash

###############################################
## Titre : Mise à jour des agent TeamViewers ##
## Auteur : BOUILLAUD Martin   				 ##
## Date : 10/08/2016 						 ##
## Version : 1.0							 ##
## Twitter : @bilyb0y 						 ##
###############################################

## Déclaration des variables
rep_tvw="/home/martinbouillaud/files/Logitheque/Assistance/Accès_Distant/"
nom_fichier_exe="QuickConnect-TeamViewer.exe"
nom_fichier_dmg="QuickConnect-TeamViewer.dmg"
nom_fichier_tar="QuickConnect-TeamViewer.tar.gz"
url_version_exe="https://download.teamviewer.com/download/TeamViewerQS_fr.exe"
url_version_dmg="https://download.teamviewer.com/download/TeamViewerQS.dmg"
url_version_tar="https://download.teamviewer.com/download/teamviewer_qs.tar.gz"

## Création du répertoire si absent
if [[ ! -d $rep_tvw ]]; then
	mkdir -p $rep_tvw
	echo "Répertoire créé avec succès"
else
	echo "Répertoire existant !"
fi

## Récupération des versions à jour
wget $url_version_exe -O $rep_tvw$nom_fichier_exe
wget $url_version_dmg -O $rep_tvw$nom_fichier_dmg
wget $url_version_tar -O $rep_tvw$nom_fichier_tar