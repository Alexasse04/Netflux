<?php


if (isset($_POST["mdp"])) {
    $mdp = $_POST["mdp"];
}
if (isset ($_POST["mail"])){
    $mail =$_POST["mail"];
}
if (isset ($_POST["dt"]) && $_POST["dt"] != ""){
    $date_n =$_POST["dt"];
}
if (isset ($_POST["genre"]) && ($_POST["genre"] == 0 || $_POST["genre"] == 1)){
    $genre =$_POST["genre"];
}



try {
    $bdd = new PDO("mysql:idUser=localhost;dbname=phpexo;charset=utf8", 'root', '');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $hashedPassword=password_hash($mdp, PASSWORD_DEFAULT);

    $sql = "INSERT INTO utilisateur(mdp, date_N, mail, Genre) VALUES (:mdp, :date_n, :mail, :genre)";
    $req = $bdd->prepare($sql);

    $req->bindParam(':mdp', $hashedPassword);
    $req->bindParam(':date_n', $date_n);
    $req->bindParam(':mail', $mail);
    $req->bindParam(':genre', $genre);

    $req->execute();

    
    header("Location:netflux");
   

} catch (PDOException $e) {
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
   
}
?>
