<?php

/*
 Je créé mon espace de nom via le mot clef "namespace"
 je lui definit un path virtuel (qui n'existe pas sur ma machine) et qui va me permettre de
 regrouper mes classes sous une meme nomeclature / groupement.

 Pour respecter la PSR4 : je dois obligatoirement respecter un namepsace qui porte le meme nom  que le dossier ET sous dossier 
 dans lequel il se trouve. (groupement de fichier = espace de nom = namespace)


J'ai definit dans mon composer.json pour mon projet, l'application de l'autoload sur le dossier contenant l'integralité des namespaces
De fait, comme j'ai mis un alias en dur sur le dossier /src, je n'utilise donc plus /src mais FreshCoffeeShop
*/
namespace FreshCoffeeShop\controllers;

class MainController
{
    public function home()
    {
        $this->show('home');
    }

    public function about()
    {
        $this->show('about');
    }

    public function products()
    {
        $productModel = new Product;

        $productList = $productModel->findAll();

        $this->show('products', [
            'productList' => $productList
        ]);
    }

    public function store()
    {
        $this->show('store');
    }

    public function page404()
    {
        http_response_code(404);
        $this->show('404');
    }

    /*
    La méthode show prend deux paramètres dont un est optionnel (on vient donner une valeur par défaut au paramètre $viewVars donc il est optionnel)
    $this->show('about');
    // Si on avait interverti les deux paramètres $viewVars et $viewName, on aurait du appeler la méthode show comme ceci :
    $this->show(null, 'about'); ou
    $this->show([], 'about');
    On aura besoin de cette méthode uniquement à l'intérieur de notre classe => visibilité private
    */
    private function show($viewName, $viewVars = [])
    {
        // $viewVars est disponible dans chaque fichier de vue
        include __DIR__ . '/../views/header.php';
        // On pourrait tester avec la fonction file_exists que le fichier existe bien avant de l'inclure
        include __DIR__ . '/../views/' . $viewName . '.php';
        include __DIR__ . '/../views/footer.php';
    }
}
