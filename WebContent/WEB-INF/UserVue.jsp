<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrateur</title>
</head>
<body>
<p>Bonjour à vous tous !</p>

 <p> 
 	<form method="post" action="UserServlet">
 		<p> <label for="nom"> Nom :</label> <input name="nom" type="text" id="nom" > </p>
 		<p> <label for="prenom"> prenom :</label> <input name="prenom" type="text" id="prenom" > </p>
 		<p> <label for="email"> mail :</label> <input name="email" type="text"  id="email"> </p>
 		<p> <label for="password"> password :</label> <input name="password" type="text" id="password" > </p>
 		<p> <label for="fonction"> fonction :</label> <input name="fonction" type="text" id="fonction" > </p>
 
 	 <input name="envoyer" type="submit"  value="save"> 
 	</form>
 

</body>
</html>