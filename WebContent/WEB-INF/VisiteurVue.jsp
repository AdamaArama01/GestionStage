<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EspacePartage</title>
</head>
<body>
<p>Bienvenue dans l'espace visiteur !</p>

 <p> 
 	<form method="post" action="VisiteurServlet">
 		<p> <label for="reference"> Référence :</label> <input name="reference" type="text" id="reference" > </p>
 		<p> <label for="email"> Email :</label> <input name="email" type="text" id="email" > </p>
 		<p> <label for="lienoffre"> Lien :</label> <input name="lienoffre" type="text" id="lienoffre" > </p>
 	 <input name="envoyer" type="submit"  value="save"> 
 	</form>
 

</body>
</html>