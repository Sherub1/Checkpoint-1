#!/bin/bash



#Vérification de la présence d'argument



if [ $# -eq 0 ]; then

    echo "Il manque les noms d'utilisateurs en argument - Fin du script"

    exit 0

fi



#Vérication de l'existence des utilisteurs



for utilisateur in "$@"; 

    do

         while cat /etc/passwd | grep $utilisateur > /dev/null; 

         do

           echo "L'utilisteur $utilisateur existe déjà"

        

#Demande de saisie d'un nouveau nom

        

         echo "Entrez un nouveau nom :"

        read nouvelutilisateur

        utilisateur="$nouvelutilisateur"

    done

    

#Crétion de l'utilisateur



    sudo useradd "$utilisateur"

    

#Vérification de la création

    

    if cat /etc/passwd | grep $utilisateur > /dev/null

        then

        echo "L'utilisateur $utilisateur a été créé"

        

#En cas d'erreur lors de la création

        

       else   

        echo "Erreur à la création de l'utilisateur $utilisateur"

        

    

    fi

    

done

