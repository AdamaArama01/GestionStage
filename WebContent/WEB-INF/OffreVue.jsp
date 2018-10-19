<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Création de l'offre</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />

<style>

body{
padding-top:0px;
padding-right:50px;
padding-bottom:0px;
padding-left:70px;
margin-top:0px;
margin-rigth:50px;
magin-left:70px;
margin-bottom:0px;
}

table {
	height: 0px;
	width: 90%;
	background-color: white;
	text-align: center;
	border-spacing: 3px;
	background-color: blue;
}

thead {
	background-color: black;
	border-bottom: 20px solid #333ddf;
	color: white;
}

td {
	color: black;
	background-color: white;
}

form {
	background-color: #F5F5F5;
	height: 100px;
	width: 100%;
}
select{
height:40px;
width: 20%;
}

button {
height:40px;
width: 20%;
}
input{
height:40px;
width: 30%;
}


</style>s
</head>
<body>
<center>
 	<form method="post" action="OffreServlet">
 	<fieldset style="border : 50px solid #696969">
	<legend style="border : 20px solid #D3FF00">Création de l'offre</legend>
	<p>Bienvenue à l'espace de création de l'offre</p>
	<label for="titre">Titre<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="titre" name="titre" value=""
	size="30" maxlength="" />
	<br/>
	<label for="titre">Description<span
	class="requis">*</span></label>
	<textarea id="description" name="description" 
	size="30" row="5"></textarea>
	<br/>
 	<label for="duree">Durée du Stage<span
	class="requis"></span></label>
	<!-- <input type="text" autocomplete="off" id="duree"
	name="duree" value="" size="30" maxlength="" /> -->
	<select name="duree" id="duration" class="form-control" data-width="100%">
	<option value="" selected="selected">Choisissez une durée</option>
	<option value="1">1 mois</option>
	<option value="2">2 mois</option>
	<option value="3">3 mois</option>
	<option value="4">4 mois</option>
	<option value="5">5 mois</option>
	<option value="6">6 mois</option>
	<option value="7">Plus de 6 mois</option>
	</select>
		
	<br/>
 	<label for="debut">Début de Stage<span
	class="requis"></span></label>
	<input type="date" autocomplete="off" id="debut"
	name="debut" value="" size="30" maxlength="" />
	<br/>	
 	<label for="lieu">Lieu de Stage<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="lieu"
	name="lieu" value="" size="30" maxlength="40" />
	<br/>	
 	<label for="service">Service offreur<span
	class="requis">*</span></label>
	<input type="text" autocomplete="off" id="service"
	name="service" value="" size="30" maxlength="50" />
	<br/>	
 	<label for="categorie">Catégorie<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="categorie"
	name="categorie" value="" size="30" maxlength="" />
	<br/>	
 	<label for="idvis">Lien de l'offre<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="idvis"
	name="idvis" value="${lib}" size="30" maxlength="" />
	<input type="hidden" value="${idvise}" name="idvise" id="idvise">
	
	<br/>	
 	<label for="idadmin">administrateur<span
	class="requis"></span></label>
	<input type="text" autocomplete="off" id="idadmin"
	name="idadmin" value="${non}" size="30" maxlength="" />
	<input type="hidden" value="${id}" name="idadmin" id="idvi">
	<br/>	
 	<input type="submit" value="Enregistrer"
	class="sansLabel" />
	<br />
	</fieldset>
 	</form>
 	</center>
</body>
</html>