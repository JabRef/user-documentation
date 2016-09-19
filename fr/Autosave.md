---
title: Sauvegarde automatique
---

# Sauvegarde automatique

La fonction de sauvegarde automatique aide à prévenir la perte de données si votre ordinateur ou JabRef plante. Quand la sauvegarde automatique est activée, JabRef vérifie régulièrement (à un intervalle de temps configurable) si l'une de vos bases a été modifiée depuis votre dernier enregistrement. Si c'est le cas, JabRef créera une copie de la base dans un fichier nommé `.$[fichier]$`, où `[fichier]` est le nom de fichier de la base en question. Le fichier de sauvegarde automatique se trouve dans le même répertoire que le fichier bib.

Le fichier de sauvegarde automatique sera effacé dès que vous enregistrerez la base, ainsi qui si vous quittez normalement JabRef. Cependant, si JabRef se ferme à cause d'un plantage, le fichier de sauvegarde automatique persistera. Dans ce cas, il sera détecté la prochaine fois que vous essayerez d'ouvrir la base, et on vous proposera alors de récupérer la base à partir du fichier de sauvegarde automatique.

La sauvegarde automatique est activée par défaut, avec un intervalle de sauvegarde de 5 minutes. Si vous le voulez, vous pouvez désactiver l'option vous demandant de confirmer la récupération de la base à partir du fichier de sauvegarde automatique. Dans ce cas, JabRef récupérera la base directement, sans vous en informer.
