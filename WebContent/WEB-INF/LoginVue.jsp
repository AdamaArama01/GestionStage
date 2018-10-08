<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page de Connexion</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>

<body>
<div>
 	<form method="post" action="LoginServlet">
 	<fieldset>
	<legend>Connexion</legend>
	<p>Veuillez vous connecter pour continuer.</p>
	<label for="email">Username:<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="email" name="email" value=""
	size="20" maxlength="60" />
	<br/>
	<label for="password">Mot de Passe:<span
	class="requis">*</span></label>
	<input type="password" autocomplete="off" id="password"
	name="password" value="" size="20" maxlength="20" />
	<br/>
	<input type="submit" value="Se Connecter"
	class="sansLabel" />
	<br />
				</fieldset>
 			</form>
 			
 		</div>
	</body>
</html>