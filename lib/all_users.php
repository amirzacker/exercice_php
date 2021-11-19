<?php

    $sqlRequest = "SELECT * FROM `users`";
    $user_table = mysqli_query($connexion, $sqlRequest);
    $resultat = mysqli_fetch_all($user_table, MYSQLI_ASSOC);
