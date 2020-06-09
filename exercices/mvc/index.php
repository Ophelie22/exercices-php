<?php

include __DIR__ . '/inc/Database.php';
include __DIR__ . '/models/Product.php';
include __DIR__ . '/controllers/MainController.php';

/*
Les parenthèses sont optionnelles dès lors qu'il n'y a pas de paramètre dans le contructeur de la classe
$controller = new MainController();
*/
$controller = new MainController;

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
