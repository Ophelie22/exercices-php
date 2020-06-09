# Challenge : Découverte SQL

## Création base de données (BDD) et tables

### 1. Conception

**Concevoir la BDD :**

- une base de données `blog`
- une table `auteurs`
- une table `articles`
- une table `categories`

**Description des tables :**

#### `auteurs`
- Nom
- Image (photo)
- Adresse e-mail

#### `articles`
- Titre de l'article
- Résumé
- Corps du texte
- Date et heure de publication
- Nombre de visionnages
- Auteur
- Catégorie

#### `categories`
- Intitulé

#### Exemple de dictionnaire de données

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|nom_du_champ|VARCHAR(255)|NULL, valeur par défaut, INDEX, etc.|Que contient ce champ, si besoin de préciser.|
|etc.|...|...|...|

**Objectifs**

- Pour chacune des tables, **concevoir le dictionnaire de données** sous la forme du tableau ci-dessus, dans un fichier `structure-donnees.md` _(à pusher)_.

```md
- Exemple de code Markdown pour écrire un tableau :

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|nom_du_champ|VARCHAR(255)|NULL, INDEX, etc.|Lorem ipsum...|
```

> Dans Atom, faire <kbd>CTRL</kbd> + <kbd>MAJ</kbd> + <kbd>M</kbd> pour afficher la prévisualisation Markdown.

### 2. Création

Une fois vos tables définies, créez-les dans MySQL à l'aide de phpMyAdmin.

**Objectifs**

- **Créer via phpMyAdmin la base de données et les 3 tables précédemment décrites**.

#### Bonus relations
**Relier les tables entre elles** selon la méthode vue en cours.

### 3. Insertion de données
Intégrer des données via l'interface de PMA.

**Objectifs**

- **Insérer des données d'exemple** (Le fichier `contenus.md` en contient déjà, intégrez-les ils vous serviront à comprendre le type des champs attendu, puis n'hésitez pas à en ajouter d'autres).

### 4. Ecritures de requêtes SQL

**Objectifs**

Écrire les requêtes SQL permettant d'obtenir les résultats suivants, reporter les requêtes SQL dans un fichier `requetes.md` _(à pusher)_.

> Vous devrez avoir un minimum de données dans vos tables pour que la requête soit pertinente.

- **=> sans relations :**
- **Auteurs**
    - Lister les auteurs.
    - Lister les auteurs par ordre alphabétique (sur le nom).
    - Lister les auteurs dont l'e-mail contient _@gmail.com_.
    - Lister les auteurs qui n'ont pas d'image de profil.
- **Articles**
    - Lister tous les articles.
    - Lister le titre et la date de publication de tous les articles.
    - Afficher le titre d'un article en particulier (en passant l'`id` de l'article).
    - Trier par ordre décroissant tous les articles par la date de publication.
- **=> avec relations (ou notion de table liée) :**
    - Lister tous les articles avec leur nom d'auteur et l'intitulé de la catégorie.
    - Afficher tous les articles dont la catégorie commence par M
    - Lister tous les articles dont l'auteur est donné (via son `id`).
    - Lister le nom de l'auteur des articles dont la catégorie est donnée (via son `id`).