<?php

/*
 Recette git
 1. composer init : initialise pour la premiere fois le composer.json
 2. composer dump-autoload : permet de generer l'autoload en automatique
    2 etapes: 
        - inclure le fichier autoload.php
        - modifier le composer.json pour utiliser notre autoload au sein de notre projet et non uniquement avec vendor      
 3. IMPORTANT : lorsque je rajoute des modification dans mon composer.json pour l'autoload, il faut absolument
        effectuer la commande "composer update" qui vfa mettre a jour l'autoload de mes vendor par rapport au composer.json   
*/
require __DIR__ . '/vendor/autoload.php';

include __DIR__ . '/inc/Database.php';
include __DIR__ . '/src/models/Product.php';
//include __DIR__ . '/controllers/MainController.php';


//--------------------------inutile avec require autoload ---------------------------------

/*
 CULTURE G - Ceci ne sera plus a faire manuellement 

 Je construit manuellement mon autoloader
 j'ai besoin des fonctions :
 - spl_autoload_register
 - une fonction custom qui va effectuer des includes de classe

 Attention meme si mySuperAutoloader prend un parametre, celui ci est automatiquement
 passé par PHP lui meme via la fonction spl_autoload_register
*/

/*function mySuperAutoloader ($className) {
    echo 'require automatique par PHP de la classe : ' . $className;
    /*
     Ma fonction va automatiquement aller inclure les fichiers dont je vais avoir besoin dans
     mon repertoire courant (aka __DIR__) / ma classe .php

     Sous linux, les fichier physique sur ma machinesont situé sur des arborescences du type toto/tata/titi
     MAIS sous windows les fichiers ont eux ce type d'arborescence tata\\toto\\titi de fait je dois remplacer
     l'url fournit par PHP dans $classname avec le format attendu sous linux
    */
    //require(__DIR__."/".str_replace("\\", "/", $className).'.php');
//}

/*
 spl_autoload_register est une methode particuliere
 elle est appelé a chaque fois que php est utilisé et tout particulierement a chaque fois qu'un namespace est appelé.
 Un namespace est une "arborescence virtuelle" definie par le developpeur cependant nous ne somme pas dispensé de charger le fichier physique
 correspondant. spl_autoload_register prend un parametre une fonction / nom de fonction a appeler au chargement et celle ci sera
 chargé d'include / require automatiquement la classe via son path et son nom passé par PHP en parametre  
*/
//spl_autoload_register('mySuperAutoloader');

//------------------------------------------------------------------

/*
 Pour utiliser une classe definie dans un namespace de mon application
 il faut utiliser le mot clef "use + path_definit_et_sa_classe"

 L'avantage des namespaces permet de facon automatique via la fonction spl_autoload_register
 d'aller charger UNIQUEMENT les classe associée au namespace appelé. 
 
 De fait, meme si j'ai deux classes presente dans le namespace pouet/kryton
 seul le fichier physique MainController.php sera autmatiquement appelé par php
*/

/*
 Grace au spl_autoload_register : l'include est prechargé et le use appelle uniquement la classe / fichier dont il a besoin grace au use
 il est possible d'utiliser un alias sur le nasmpace afin d'avoir un nom plus court ou different de la classe loader 
*/

use FreshCoffeeShop\controllers\MainController;
//use toto\Maincontroller as HomeController;

/*
Les parenthèses sont optionnelles dès lors qu'il n'y a pas de paramètre dans le contructeur de la classe
$controller = new MainController();
*/
                  //fully qualified classname
$controller = new MainController();

// Dispatcher
if (empty($_GET)) {
    // J'appelle la bonne méthode de mon controller (home)
    $controller->home();
} elseif ($_GET['_url'] === '/store') {
    $controller->store();
} elseif ($_GET['_url'] === '/products') {
    $controller->products();
} elseif ($_GET['_url'] === '/about') {
    $controller->about();
} else {
    $controller->page404();
}
