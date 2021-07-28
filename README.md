# berberCharactersLCD
## Description
Berber characters (Tifinagh and Romanisation) for LCD display, installed through a Raspberry Pi                     
Modèles de caractères berbères (Tifinagh et Latin) pour un affichage sur écran LCD, intallés au travers d'une Raspberry Pi

## Materials needed
- Raspberry Pi
- LCD Display

## How to install
RESERVED

**Branchement de l'écran LCD à la Raspberry**
![image](https://user-images.githubusercontent.com/81772272/127218699-7c0559e7-0ebe-4938-a27b-df03e9499bb3.png)

**Accès en SSH à la Raspberry**

Pour une utilisation aisée de la Raspberry Pi, je vous conseille de la relier à un réseau local avec votre machine en point d'accès. Vous obtiendrez son adresse IP sur ce réseau.

**Makefile**

Pour les habitués de Make, le makefile fourni effectuera une cross-compilation avec transfert de l'éxecutable sur votre Raspberry Pi. Attention à bien mettre à jour le makefile

## How to use

**/!\ NOTE:** Vous ne pourrez afficher que 8 caractères customisés à la fois sur votre écran.
- Choisir un texte en fonction des contraintes,
- Prendre connaissance des caractères utilisés dans les includes,
- Installer ces caractères grâce à la fonction *lcd_add_char*,
- Rédiger votre message grâce à la fonction *lcd_message*,

Votre message est une chaîne de caractères telle que chaque code de caractère correspond à son adresse dans la CGRAM de votre écran LCD:
- 0x01 renvoit au caractère installé à l'adresse mémoire 0x01 de votre CGRAM lors de l'éxecution du *lcd_add_char*

## Ce travail vous appartient. Tous les usages vous sont permis.
Mes remerciements vont à mon professeur de systèmes communiquants qui nous a permis de travailler nos projets en toute liberté.


