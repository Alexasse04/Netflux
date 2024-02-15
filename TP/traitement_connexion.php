<?php
    if(isset($_POST["mail"])){
        $mail = $_POST["mail"];
    }
    if(isset($_POST["mdp"])){
        $mdp = $_POST["mdp"];
    }


     $bdd = new PDO(
        "mysql:host=localhost;dbname=phpexo;charset=utf8",
        'root' ,
        ''
     );
    
    $sql = "SELECT count(*) as nbLigne FROM utilisateur WHERE mail= :mail AND mdp= :mdp";
    $req = $bdd -> prepare($sql);

    $req -> bindParam(":mail", $mail, PDO::PARAM_STR);
    $req -> bindParam(":mdp", $mdp, PDO::PARAM_STR);

    $req -> execute();
    $resultat = $req->fetchAll();
    
    print_r($resultat);

    if ($resultat[0]["nbLigne"] == 1) {
        header("Location: netflux");
        die();
    } 
    else {
        header("Location: Authentification.php?erreur=Incorrect");
        die();
    }


?>