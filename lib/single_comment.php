<?php 

$sqlRequestcomment = "SELECT * FROM comment where  id_article ='" . $_GET['id_article'] . "' AND id_user ='" . $_SESSION['id_user'] . "'";
$article_table = mysqli_query($connexion, $sqlRequestcomment);
$resultat_comment = mysqli_fetch_all($article_table, MYSQLI_ASSOC);


$sqlRequestcommentM = "SELECT AVG(start_comment) FROM comment where  id_article ='" . $_GET['id_article'] . "' ";
$article_tableM = mysqli_query($connexion, $sqlRequestcommentM);
$resultat_commentM = mysqli_fetch_all($article_tableM, MYSQLI_ASSOC);



