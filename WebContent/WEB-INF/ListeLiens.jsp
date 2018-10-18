<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Les Liens</title>
<link rel = "stylesheet" type = "text/css" href = "css/style.css">   
<style>
#menu {
	width: 100%;
	height: 75px;;
	background-color: #000fff;
}

#menu:hover {
	background: #773300;
}

#pres {
	position: relative;
	width: 100%;
	height: 75px;;
}

#pres ul {
	float: right;
	right: 10%;
	padding-top: 15px;
	margin-left: -400px;
	position: relative;
}

#pres ul li {
	margin-left: 20px;
	float: left;
	position: relative;
}

#pres ul li a {
	text-align: center;
	display: inline-block;
	background-color: #00A0A0;
	height: 30px;
	width: 100px;
	color: #FD0;
	padding-top: 10px;
	text-decoration: none;
	position: relative;
	margin-bottom: 50px;
}

#pres ul li a:hover {
	background: #773300;
}

#cent {
	height: 100%;
	width: 100%;
	background-color: #aaabbb;
}

#cen table {
	height: 6px;
	width: 100%;
	background-color: blue;
	text-align: center;
}

th {
    text-align: left;
}

tr:first-child {
	font-weight: bold;
	background-color: #777777;
}
</style>
</head>

<body>
<div id="menu">
		<h1>
			<center><img src="logo_ifi.png" width="100%" height="100"/></center>
		</h1>
	</div>
<div id="menu">
		<h1>
			<center><img src="logo_ifi.png" width="100%" height="100"/></center>
			<h2 align="center">LISTE DES OFFRES RECUES</h2>
		</h1>
	</div>
	<div id="pres">
		<ul>
			<li><a href="\GestionStage\Logout">Se Deconnecter</a></li>
		</ul>
	</div>


<table border="2" align = "center" background-color="green" color="yellow"  margin:10px padding:5px>
<tr>
<th>Ref</th>
<th>Adr. User</th>
<th>Email</th>
<th>Date du Partage</th>
<th>Lien de l'offre</th>
<th>Actions</th>
</tr text-align: left>
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
