<?php 
// Dépendance : Connexion Bdd
require_once '../config/Database.php';
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
        created_at DESC'
;
$posts = $db->findAll($query, []);

// Sélection et affichage du template PHTML.
$template = 'realisation';
include '../layout.phtml';