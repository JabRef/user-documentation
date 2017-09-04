---
title: Accès à distance
---

# Accès à distance

Cette fonction peut être activée et configurée dans **Préférences → Avancé**.

*Notez qu'activer cette fonction sous Windows XP SP2 (et probablement d'autres configurations) peut afficher une boîte de message disant que certaines fonctions du programme ont été bloquées par le pare-feu de Windows. Vous pouvez en toute sécurité dire au pare-feu de continuer à bloquer ; le pare-feu n'interférera pas avec l'accès à distance de JabRef.*

Si l'accès à distance est activé, JabRef se mettra à écouter un port spécifique lors de son démarrage. Cela signifie que les autres applications peuvent envoyer des informations à JabRef à travers ce port. JabRef n'acceptera que des connexions locales, afin d'éviter le risque d'interférence à partir de l'extérieur.

La réservation du port permet à une seconde instance de JabRef de découvrir qu'une première instance tourne déjà. Dans ce cas, à moins qu'elle soit spécifiquement configurée pour tourner en mode autonome, la seconde instance de JabRef passera ses options de sa ligne de commande à la première instance en utilisant le port, puis se terminera immédiatement.

La première instance de JabRef lira les options de la ligne de commande et effectuera les actions indiquées, tel que la lecture ou l'importation d'un fichier, ou la fusion d'un fichier avec la base de données actuellement affichée. Si un fichier est importé en utilisant l'option de ligne de commande `--importToOpen`, les entrées importées seront ajoutées à la base de données actuellement affichée. Si aucune base de données n'est ouverte, une nouvelle base sera créée.
