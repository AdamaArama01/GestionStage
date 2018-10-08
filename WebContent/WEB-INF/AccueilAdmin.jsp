<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">
</head>
<body>
<h2 align="center">ESPACE ADMINISTRATEUR</h2>
<p>
<table class = "table1" border="2" align = "center">
<tr>
<form action ="Deconnexion">
<input type= "submit" value = "Se Déconnecter">
</form>
</tr>
<tr>
<td><a href ='<c:url value="/ListeLiensServlet"> <c:param name=" " value="/WEB-INF/ListeLiens.jsp"/> </c:url>'>Gestion Offres</a></td>
<td><a href ='<c:url value="/UserServlet"> <c:param name=" " value="/WEB-INF/UserVue.jsp"/> </c:url>'>Gestion Admin</a> </td>
</tr>
</table>
</body>
</html>