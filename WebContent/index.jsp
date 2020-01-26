<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ page import="org.springframework.web.client.RestTemplate"%>
<%@ page import="com.eseo_tp_client.blo.Ville"%>
<%@ page import="javax.servlet.http.*"%>
<head>
<meta charset="ISO-8859-1">
<title>Client Ville</title>
</head>
<body> 


	<h1 align="center">Calcul de distance</h1>
<%
		RestTemplate restTemplate = new RestTemplate();
		Ville[] villes = restTemplate.getForObject("http://127.0.0.1:8181/get", Ville[].class);
		String[] noms = new String[villes.length];
		String[] codeCommune = new String[villes.length];
		

		HttpSession session2 = request.getSession();
		session2.setAttribute("villes", villes);
		for (int i = 0; i < villes.length; i++) {
			noms[i] = villes[i].getNomCommune();
			codeCommune[i] = villes[i].getCodeCommuneINSEE();
		}
	%>

	<form action="AccueilServ" method="post">
		<select name="nomVille1">
			<%
				for (int i = 0; i < noms.length; i++) {
			%>
			<option value=<%out.println(codeCommune[i]);%>>
				<%
					out.println(noms[i]);out.println(codeCommune[i]);
			
				%>
			</option>
			<%
				}
			%>
		</select> <select name="nomVille2">
			<%
				for (int i = 0; i < noms.length; i++) {
			%>
			<option value=<%out.println(codeCommune[i]);%>>
				<%
					out.println(noms[i]);out.println(codeCommune[i]);
				%>
			</option>
			<%
				}
			%>
		</select> <input type="submit" name="valider">

	</form>
	
	<br>


</body>
</html>