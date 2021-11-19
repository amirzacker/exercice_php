<?php 


if (!empty($_POST)) {

	if (!empty($_POST['note'])) {


		
		$sqlSelectComment = "SELECT * FROM comment WHERE id_article ='" . $_GET['id_article'] . "' AND id_user ='" . $_SESSION['id_user'] . "' " ;
		// Si nous ne voulons pas que les utilisateurs puissent s'inscrire plusieurs fois avec la même adresse Email,
		// nous allons donc dabord récuperer la table user pour chercher si nous avons une valeur identique à $email_inscription

		$commentResultat = mysqli_query($connexion, $sqlSelectComment);

		if(mysqli_num_rows($commentResultat) > 0){
			// SI la recherche de colonne email de la table user est égale à $email_inscription
			// alors l'email est déjà existant
			$comment_error = "le mec a voté"; 
			// echo '<style>#idvote { display:none;}</style>'; 
			echo $comment_error;
		}else{

		$sql_insert_comment = "INSERT INTO comment (id_comment, start_comment,id_article, id_user) VALUES (NULL,'" . $_POST['note'] . "'," . $_GET['id_article'] . "," . $_SESSION['id_user'] . ")";
			// $sql_insert_comment = "INSERT INTO comment (id_comment,id_article, id_user, start_comment) VALUES (NULL,".$_SESSION['id_article'].",".$_SESSION['id_user'].",'".$_POST['note']."')";

		if (mysqli_query($connexion, $sql_insert_comment)) {
			echo "comment ajouté";
			// echo '<style>#idvote { display:none;}</style>';

		} else {

			echo "Erreur de requete SQL";
		}
	}

	} else {
		    // echo "Attaque potentielle par téléchargement de fichiers.
		    //       Voici plus d'informations :\n";
	}
}

$sqlSelectComment = "SELECT * FROM comment WHERE id_article ='" . $_GET['id_article'] . "' AND id_user ='" . $_SESSION['id_user'] . "' " ;
// Si nous ne voulons pas que les utilisateurs puissent s'inscrire plusieurs fois avec la même adresse Email,
// nous allons donc dabord récuperer la table user pour chercher si nous avons une valeur identique à $email_inscription

$commentResultat = mysqli_query($connexion, $sqlSelectComment);
?>