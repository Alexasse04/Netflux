


<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Netflux</title>
        <link rel="stylesheet" href="style_netflux.css">
    </head>

    <body>

        <div class="bannière">  


            <header>

            <li><a href="index.php"><img  class="menus" src="netflux.png" alt=""></a>
            <span> <a class=lec href="profil.php"> Retour</a></span>
            
            </header>


        </div>

        <h2>Infomation sur les films</h2>

        <?php 
            // connection a la base de donnée
            $bdd = new PDO("mysql:host=localhost;dbname=phpexo;charset=utf8",'root' ,'');
            $sql = "SELECT * FROM video" ;
            $req = $bdd -> prepare($sql);

            $req -> execute();
            $donnees = $req->fetchAll();
                
            //boucle qui sélectionne le titre des films
            foreach($donnees as $element){
                $sqlActeur="SELECT * FROM acteur JOIN joue ON joue.fkActeur=acteur.idActeur WHERE joue.fkVideo=:video";

                $req = $bdd->prepare($sqlActeur);
                $req->bindValue(':video',$element['idVideo'], PDO::PARAM_INT);
                $req->execute();
                $donnees = $req->fetchAll();


                echo "<p id=film".$element["idVideo"].">" . $element["Titre"]."</p>" ;
                                         
            }
            

            foreach($donnees as $element){
                $sqlActeur="SELECT * FROM video JOIN joue ON joue.fkVideo=video.idVideo WHERE joue.fkActeur=:acteur";

                $req = $bdd->prepare($sqlActeur);
                $req->bindValue(':acteur',$element['idActeur'], PDO::PARAM_INT);
                $req->execute();
                $donnees = $req->fetchAll();

                echo "<p id=film".$element["idActeur"].">" . $element["Prenom"]. " " .$element["Nom"]."</p>";                            
            }
            
        ?>

        
    </body>
</html>

