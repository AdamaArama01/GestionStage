<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EspaceOffre</title>
</head>
<body>
<p>Bonjour à vous tous !</p>

 <p> 
 	<form method="post" action="OffreServlet">
 		<p> <label for="titre"> Titre :</label> <input name="titre" type="text" id="titre" > </p>
 		<p> <label for="duree"> Duree :</label> <input name="duree" type="text" id="duree" > </p>
 		<p> <label for="debut"> Debut Stage :</label> <input name="debut" type="text"  id="debut"> </p>
 		<p> <label for="lieu"> lieu :</label> <input name="lieu" type="text"  id="lieu"> </p>
 		<p> <label for="service"> Service :</label> <input name="service" type="text" id="service" > </p>
 		<p> <label for="categorie"> Categorie :</label> <input name="categorie" type="text" id="categorie" > </p>
 		
 		<p> <label for="idvisiteur"> IDVisiteur :</label> <input name="idvisiteur" type="text" id="idvis" > </p>
 		<p> <label for="idadmin"> IdAdmin :</label> <input name="idadmin" type="text" id="idadmin" > </p>
 
 	 <input name="envoyer" type="submit"  value="save"> 
 	</form>
 

</body>
</html>