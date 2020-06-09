# Exercice POO

Voir [Fiche récap' POO](../recaps/poo.MD) si besoin.

## Contexte

Nous allons tenter de _modéliser_ des véhicules, d'après la définition [Wikipédia](https://fr.wikipedia.org/wiki/V%C3%A9hicule).

### Proposition pour les véhicules

- Véhicules : Avion, Voiture, Tramway, Bicyclette, Trottinette.
- Donnée commune : vitesse en km/h.
- Actions commune : deplacement().

### Composer

On utilisera `composer` pour la gestion des namespaces.

- `composer init` (pas grand chose d'important à mettre ici, ne mettez que le strict minimum).
- Ajouter l'autoload PSR4 : ```"autoload": {
  "psr-4": {
    "ProjetGenial\\": "src/"
  }
}```
- Générer les fichiers d'autoload via ``.
- Ajouter `require 'vendor/autoload.php';` dans votre fichier de démarrage.

> Essayez d'organiser vos classes dans des namespaces cohérents.

Voir [Fiche récap' Composer](../recaps/composer.md) si besoin.

### Etape 1

> On démarre avec 2 classes.

- Créer les 5 classes de véhicules d'après une seule et même classe parente.
- Faire en sorte de pouvoir afficher leur spécificités (on se contentera d'afficher _"Je me déplace sur la route à 20 km/h"_) pour chacune des 5 classes.

### Etape 2

> On ajoute une troisième classe.

- On ajoute la notion de _vehicule_particulier_ et de _vehicule_commun_.

_vehicule_particulier_  :

- propriété `marque`
- propriété `consommation`
- Méthode `getConsommationVehicule()`

```
    public function getConsommationVehicule() {
        
        $sentence = 'Mon véhicule de la marque ' . $this->marque . ' consomme : ' . $this->consommation;
        return $sentence;
    }
```

_vehicule_commun_  :

- propriété `nombreDePlaces`
- propriété `tarifMoyenPlace`
- Méthode `totalPassagerEuro()`

```
public function totalPassagerEuro() {
    
    $total = ($this->nombreDePlaces * $this->tarifMoyenPlace);
    $sentence = 'Mon véhicule représente un total de : '. $total . '€ pour l\'ensemble des passagers';
    return $sentence;
}
```

- Modifier les classes existantes en conséquence pour que cela fonctionne.

### Etape 3

> Ajout d'interfaces.

- On ajoute la possibilité d'avertir sur `Voiture`, `Tramway` et `Bicyclette` seulement.
    - _Tut tut !_, _Ding ding !_ et _Dring dring !_

### Bonus

> On ajoute un trait nommé `Helper`.

- Ajout d'une méthode `name()` sur ce trait qui renvoie le nom de la classe PHP de l'objet courant. On utilisera la fonction PHP adéquate et on ajoutera ce `trait` sur les véhicules dont on souhaite afficher l'information.
