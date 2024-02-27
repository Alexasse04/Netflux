<!doctype html>
<html lang="fr">
	<head>
		<meta charset="utf-8">
		<title>Authentification </title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<div class="cadre">
			<div class="cadrebody">
				<h1>Authentification</h1>
				<br/>
				
				<form action="traitement_connexion.php" method="post">
    				
					
					<label for="identifiant"> </label>
    				<input type="email" name="mail" id="mail" placeholder = "E-mail"  required />
					
					
					
					<label for='mdp'> </label>
    				<input type="password" name="mdp" id="mdp" placeholder ="Mot de passe" required />
					
					
					<p><label><input type="submit" value="Valider" id="V1"></label></p>
					
					
					
					<p><label><input type="reset" value="Effacer" id= "V2"></label></p>
					
				</form>
			</div>

			<footer>
				<p>Pas de compte ? <a href="inscription.php">Cliquez ici.</a></p>
			</footer>
		</div>
	</body>
</html>
