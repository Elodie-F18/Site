<?php
// Dépendance : Connexion Bdd
require_once 'config/Database.php';

// Création de l'instance à la bdd
// @TODO optimiser les appels, pour n'avoir qu'une seule instance
$db = new Database();

$query = 
	//On sélectionne les éléments qui nous intéresse provenant de la table post : titre, contenu, prénom et nom, date de création
    'SELECT 
        post.id, 
        picture, 
        title, 
        summary, 
        created_at, 
        name 
    FROM 
        post 
    /*On fait une jointure pour récupérer le nom de la categorie qui se trouve dans la table category*/
    INNER JOIN 
        category 
    ON 
        post.category_id = category.id 
    /*On classe les articles dans leur ordre de parution (du plus recent au plus ancien)*/
    ORDER BY 
        created_at DESC
    LIMIT 3'
;
$posts = $db->findAll($query, []);

$template = 'index';
include "layout.phtml";