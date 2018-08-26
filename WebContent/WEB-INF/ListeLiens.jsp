<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test</title>
</head>
<body>
<p>
<table border="1">
<tr>
<th>Ref. No.</th>
<th>Adr. User</th>
<th>Email</th>
<th>Lien</th>
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
<%-- 
<td>
<c:out value="${lists.DatePart}"></c:out>
</td>
--%>
<td>
<c:out value="${lists.lienoffre}"></c:out>
</td>
</tr>
</c:forEach>                                                                                                                                  
</p>
</body>
</html>
