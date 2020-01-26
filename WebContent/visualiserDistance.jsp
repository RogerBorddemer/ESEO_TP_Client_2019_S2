<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Client Ville</title>
</head>
<body>
	La distance entre
	<%=session.getAttribute("nomVille1")%>
	et
	<%=session.getAttribute("nomVille2")%>
	est de :
	<%=session.getAttribute("distance")%>
	km.

	<br>
	<a href="index.jsp"> Accueil </a>

</body>
</html>