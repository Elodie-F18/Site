<?php 
// Dépendance : Connexion Bdd
require_once '../config/Database.php';
$db = new Database();

//Requête pour afficher l'article sur lequel on a cliqué
$query = 
    'SELECT 
        post.id, 
        picture, 
        title, 
        contents, 
        projet_cms,
        created_at, 
        link,
        name 
    FROM 
        post 
    INNER JOIN 
        category 
    ON 
        post.category_id = category.id 
    WHERE 
        post.id = :id';
$post = $db->findOne($query,
	[
    ':id' => $_GET['id']
	]
);

// Sélection et affichage du template PHTML.
$template = 'show_post';
include '../layout.phtml';