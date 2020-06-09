
# Interface de gestion de jeux vidéo

Je souhaite gérer moi-même mon nombre insolent de jeux vidéo en ma possession, et ce, depuis mon premier Tetris sur GameBoy.

J'ai déjà créé la base de donnée. Mais en fait, je ne sais rien faire d'autre, _je comprends rien_.

Un pote connaissant un peu HTML, bootstrap et PHP m'a fourni le code me permettant de gérer mes jeux vidéo. Merci poto :wink:

Cependant, il ne comprend rien à SQL, et il m'a laissé plein de `TODO` :scream:

Sympas comme vous êtes, vous allez bien me faire fonctionner tout ça ? :smile:

## Fonctionnalités

 1. affichage de la liste des jeux vidéo
 2. tri de cette liste
 3. ajout d'un jeu vidéo
 4. liste des plate-formes (consoles de jeu) dynamique (depuis la DB)

## Avant de coder

Mon pote m'a donné les consignes suivantes à suivre avant de coder :

1. créer la base de données `videogame` sur votre machine (avec le user correspondant)
2. importer le fichier [videogame.sql](docs/videogame.sql)

## Bonus

Dans le code, il y a plusieurs parties _"optionnelles"_. Ce serait top si vous pouviez me les faire, mais bon, ce n'est pas obligatoire :wink:

## Spoilers

<details><summary>Boucle pour afficher les jeux vidéo</summary>

```php
<?php foreach ($videogameList as $currentRow) : ?>
<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<?php endforeach; ?>
```

</details>


<details><summary>Boucle pour afficher les jeux vidéo + affichage</summary>

```php
<?php foreach ($videogameList as $currentRow) : ?>
<tr>
	<td><?= $currentRow['id'] ?></td>
	<td><?= $currentRow['name'] ?></td>
	<td><?= $currentRow['editor'] ?></td>
	<td><?= $currentRow['release_date'] ?></td>
	<td><?= $currentRow['????'] ?></td>
</tr>
<?php endforeach; ?>
```

</details>