<?php

/*
1 table MySQL = 1 classe de model
1 champ = 1 propriété
Ce model s'ocuppera de toutes les intéractions avec la table products (CRUD)
*/
class Product
{
    public $id;
    public $title;
    public $subtitle;
    public $image;
    public $text;

    // Create Read Update Delete => CRUD
    public function create()
    {
    }

    public function read()
    {
    }

    public function update()
    {
    }

    public function delete()
    {
    }

    public function findAll()
    {
        $sql = '
          SELECT *
          FROM products
        ';

        // Database::getPDO() est une méthode statique de la classe Database fournie dans "inc/Database.php"
        $pdoStatement = Database::getPDO()->query($sql);

        // Définie la classe que je veux comme résultat
        // FETCH_CLASS permet de demande à PDO de créer les résultats en repranant la classe définie en deuxième paramètre (ici Product)
        // Cf. README.md : PDO::FETCH_CLASS est nouveau, on avait vu PDO::FETCH_OBJ qui génère des objets anonymes. Avec PDO::FETCH_CLASS, PDO génère automatiquement des objets pour une classe précise
        // Retourne tous les résultats sous forme d'array d'objets Product
        return $pdoStatement->fetchAll(PDO::FETCH_CLASS, 'Product');
      }
}
