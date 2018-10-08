<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Les Offres</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">
</head>
<body>                            		
 <form  method="post" action="#">  
 <div>
 <select name=f placeholder="Fonction">
 <option value="titre">Titre</option>
 <option value="lieu">Lieu</option>
 <option value="categorie">Categorie</option>
 </select>
 <input type="text" name="" placeholder="Tapez un mot Clé" />
 <button type="submit">Rechercher</button>
 </div>
 </form>  
 </br>

<h2 align="center">LISTE DES OFFRES CREES</h2>
<table class = "table1" border="2" align = "center">
<tr>
<th>Ref.</th>
<th>Titre</th>
<th>Description</th>
<th>Durée</th>
<th>Début de stage</th>
<th>Lieu de Stage</th>
<th>Service du Stage</th>
<th>Catégorie</th>
<th>Id Offre</th>
<th>Id Admin</th>
<th>Actions</th>
</tr>
<c:forEach items="${listeoffre}" var ="list">
<tr>
<td>
<c:out value="${list.idof}" />
</td>
<td>
<c:out value="${list.titre}"></c:out>
</td>
<td>
<c:out value="${list.description}"></c:out>
</td> 
<td>
<c:out value="${list.duree}"></c:out>
</td>
<td>
<c:out value="${list.debut}"></c:out>
</td>
<td>
<c:out value="${list.lieu}"></c:out>
</td>
<td>
<c:out value="${list.service}"></c:out>
</td>
<td>
<c:out value="${list.categorie}"></c:out>
</td>
<td>
<c:out value="${list.idvisiteur}"></c:out>
</td>
<td>
<c:out value="${list.idadmin}"></c:out>
</td>
<td><a href="${lists.lienoffre}" target="_blank">Vérifier</a> -
<a href ='<c:url value="/RecupLienOffreServlet"> <c:param name="idvis" value="${lists.idvis}"/> </c:url>'>Editer</a> - 
<a href ='<c:url value="DeleteOffreServlet"> <c:param name="idof" value="${list.idof}"/> </c:url>'>Delete</a> </td>

</tr>
</c:forEach>
</table>    

</body>
</html>