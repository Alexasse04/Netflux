<!doctype html>
<html lang="fr">
	<head>
		<meta charset="utf-8">
		<title>Inscription</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		<div class="cadre">
			<div class="cadrebody">
				<h1>Inscription</h1>
				<p> * champs obligatoire</p>
				<form action="traitement_inscription.php" method="post">
					
					<input type="text" name="mail" id="mail" placeholder="Adresse Mail *" required />
					<br/>
					<br/>
					
					
					<input type="password" name="mdp" minlength='8' id="mdp" placeholder= "Mot de passe *" required />
					
					<input type="password" name="vmdp" minlength='8' id="vmdp" placeholder="Validation du mot de passe" required />
					
					<label for="dt">Date de naissance <span class = "oblig" > * </span>:  </label>
					<input type="date" name="dt" id="dt" min='1950-01-01' max='2023-09-01' required />
					<br/>
					<br/>
					<label for="info"> J’accepte de recevoir des mails d’informations  </label>
					<input type="checkbox" name="info" id="info"  />
					<br/>			
					<br/>
					<label for="genre"> genre <span class = "oblig" > * </span> :  </label>
					<br/>
					<label for="genre"> H </label>
					<input type="radio" name="genre" id="genre" value="0" checked required />
					
					<label for="gen"> F </label>
					<input type="radio" name="genre" id="gen" value="1" required />
					
										
					<label for="condi"> J’accepte les conditions d’utilisation de ce site <span class = "oblig" > * </span> :  </label>
					<input type="checkbox" name="condi" id="condi" required />
					<br/>
					<br/>
					<p><label><input type="submit" value="Valider" id="V1"></label></p>
					<p><label><input type="reset" value="Effacer" id= "V2"></label></p>
				</form>
			</div>

			<footer>
				<p><a href="authentification.php">Retour à la page de connexion.</a></p>
			</footer>
		</div>
	</body>
</html>
