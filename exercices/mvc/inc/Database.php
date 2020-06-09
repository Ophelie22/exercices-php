<?php

// Design Pattern : Singleton
class Database {
    /** @var PDO */
    private $dbh;
    private static $_instance;

    // Un singleton veut limiter l'instanciation d'une classe, alors on passe le constructeur en privé
    private function __construct() {
        try {
            $this->dbh = new PDO(
                "mysql:host=localhost;dbname=coffee;charset=utf8",
                'coffee',
                'coffee',
                array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING) // Affiche les erreurs SQL à l'écran
            );
        }
        catch(Exception $exception) {
            die('Erreur de connexion...' . $exception->getMessage());
        }
    }

    // the unique method you need to use
    // static permet de lier la méthode à la classe et non à une instance (identique aux constantes de classes PDO::FETCH_ASSOC)
    // On peut appeler une méthode statique d'une classe en faisant MonNomDeClasse::MonNomDeMethodeStatique
    public static function getPDO() {
        // If no instance => create one
        /*
        self permet d'accèder à un élément statique de ma classe (propriété OU méthode)
        // A l'intérieur d'une méthode statique, nous n'avons pas accès à $this vu que les méthodes statiques sont liées à la classe et non à une instance
        @link http://php.net/manual/fr/language.oop5.paamayim-nekudotayim.php
        */
        if (empty(self::$_instance)) {
            self::$_instance = new Database();
        }
        return self::$_instance->dbh;
    }
}
