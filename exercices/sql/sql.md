# SQL

## Contexte

Vous avez 4 tables existantes (concert_hall, singer, album, song) dont la mise en relation n'a pas été réalisée.

Dans notre postulat de départ, nous pourrons considérer que :

- Qu'un chanteur peux avoir réalisé des albums.
- Qu'une salle de concert peux accueillir plusieurs chanteurs en même temps à une date precise.
- Q'un chanteur peux chanter plusieurs fois dans une meme salle de concert.
- Qu'un album peux contenir plusieurs chansons.

Pour l'import des données, utiliser le script musicdb.sql

Réaliser dans un script (fichier .txt ou .sql par exemple)

# Exercice 1

Dans un premier temps :

1. Rajouter les jointures manquantes à nos tables.

> Note: la jointure entre album et song est déjà presente dans le schema
 
2. Faire en sorte qu'il ne puisse pas y avoir deux chanteurs identiques.
3. Rajouter le nombre de musiciens present pour un chanteur et pour un concert. La valeur minimum de l'ordre est de 0.

Ensuite: 

4. Récupérer le nombre d'albums par chanteur
5. Récupérer le nombre de musiciens par concert pour l'année en cours

spoiler

<details>

  >  YEAR(my_date) = '1996'

</details>

6. Récupérer la liste des salles de concert pour chaque chanteur
7. Récupérer la liste de chanson qui pourraient etre chantées pour un concert

# Exercice 2 

Modifiez votre schema (via script ou PMA) pour permettre:

1. Q'une chanson puisse ne pas encore être affiliée à un album
2. Que la supression d'un chanteur implique la suppression l'intégralité de son contenu