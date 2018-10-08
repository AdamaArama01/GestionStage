<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Les Liens</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">
</head>
<body>
<h2 align="center">LISTE DES OFFRES RECUES</h2>
<table class = "table1" border="2" align = "center">
<tr>
<th>Ref</th>
<th>Adr. User</th>
<th>Email</th>
<th>Date du Partage</th>
<th>Lien de l'offre</th>
<th>Actions</th>
</tr>
<c:forEach items="${ListeLiens}" var ="lists">
<tr>
<td>
<c:out value="${lists.idvis}" />
</td>
<td>
<c:out value="${lists.reference}"></c:out>
</td> 
<td>
<c:out value="${lists.email}"></c:out>
</td>
<td>
<c:out value="${lists.datePart}"></c:out>
</td>
<td>
<c:out value="${lists.lienoffre}"></c:out>
</td>
<td><a href="${lists.lienoffre}" target="_blank">Vérifier</a> -
<a href ='<c:url value="/RecupLienOffreServlet"> <c:param name="idvis" value="${lists.idvis}"/> </c:url>'>CréerOffre</a> - 
<a href ='<c:url value="/SupprOffreServlet"> <c:param name="idvis" value="${lists.idvis}"/> </c:url>'>Delete</a> </td>

</tr>
</c:forEach>
</table>                                                                                                                                  
</body>
</html>
