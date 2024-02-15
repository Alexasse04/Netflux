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

                <nav>

                    <ul>
                        <li>Accueil</li>
                        <li>Séries</li>
                        <li>Films</li>
                        <li>Nouveautés les plus regardés</li>
                        <li>Ma liste</li>
                        <li>Explorer par langue</li>
                    </ul>

                </nav>



            </header>


        </div>


        <div class="video">

            <h2>Tendances actuelles</h2>

            <ul class="list">

                <button id="p">⬅️</button>

                
                <?php 
                    // connection a la base de donnée
                    $bdd = new PDO("mysql:host=localhost;dbname=phpexo;charset=utf8",'root' ,'');
                    $sql = "SELECT * FROM video" ;
                    $req = $bdd -> prepare($sql);

                    $req -> execute();
                    $donnees = $req->fetchAll();
                    
                    //boucle qui affiche les image des films en lien a la base de donnée
                    foreach ($donnees as $element) {
                        
                        echo "<li class='film'>";
                        echo "<img id='image".$element['idVideo']."' class='ima' src= 'image/".$element['image'] ."'>";
                        echo "<div class='infos'>" . $element["Titre"]. " "; 
                        

                        //Recup acteurs
                        $sqlActeur="SELECT * FROM acteur JOIN joue ON joue.fkActeur=acteur.idActeur WHERE video.Titre=Titre";
                        $req = $bdd -> prepare($sqlActeur);
                        $req -> execute();
                        $donnees2 = $req->fetchAll();

                        // Affichage acteurs
                        foreach($donnees2 as $element2){
                            
                            echo "<id=film".$element2["idActeur"].">" . $element2["Prenom"]. " " .$element2["Nom"].">";
                            
                            }
                        

                        echo "</div>";                       
                        echo "</li>";
                    }
                    
                ?>
                

                <button id="s">➡️</button>  

            </ul>

        </div>
        <script src="api.js"></script>
    </body>

</html>