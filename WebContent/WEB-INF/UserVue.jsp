<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
<div>
 	<form method="post" action="UserServlet">
 	<fieldset>
	<legend>Inscription</legend>
	<p>Ici, le formulaire d'inscription des administrateurs</p>
	<label for="nom">Nom<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="nom" name="nom" value=""
	size="30" maxlength="20" />
	<br/>
 	<label for="prenom">Prénom<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="prenom"
	name="prenom" value="" size="30" maxlength="20" />
	<br/>
 	<label for="email">Adresse email<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="email"
	name="email" value="" size="30" maxlength="40" />
	<br/>
	<label for="Password">Mot de passe<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="password"
	name="password" value="" size="30" maxlength="20" />
	<br/>	
 	<label for="fonction">Fonction à l'IFI<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="fonction"
	name="fonction" value="" size="30" maxlength="40" />
	<br/>	
  	<input type="submit" value="Enregistrer"
	class="sansLabel" />
	<br />
	</fieldset>
 	</form>
 </div>	
</body>
</html>