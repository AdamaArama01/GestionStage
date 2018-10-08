<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Partager</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
<div>
 	<form method="post" action="VisiteurServlet">
 	<fieldset>
	<legend>Partager</legend>
	<p>Vous pouvez partager les offres via ce formulaire.</p>
	<label for="reference">Adresse visiteur <span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="email" name="reference" value=""
	size="20" maxlength="60" />
	<br/>
	<label for="email">Adresse email<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="email"
	name="email" value="" size="20" maxlength="20" />
	<br/>
	<label for="lienoffre">Lien de l'offre</label>
	<input type="text" autocomplete="off" id="lienoffre" name="lienoffre" value=""
	size="20" maxlength="200" />
	<br/>
	<input type="submit" value="Envoyer"
	class="sansLabel" />
	<br />
	</fieldset>
 	</form>
 </div>
</body>
</html>