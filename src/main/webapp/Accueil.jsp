<%@page import="java.util.ArrayList"%>
<%@page import="com.servlet.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="/MonServletJsp/style.css" media="screen" type="text/css" />
<title>Acceuil</title>
</head>
<body>
<%
String nom=(String)request.getAttribute("nom");
String prenom=(String)request.getAttribute("prenom");
String pseudo=(String)request.getAttribute("pseudo");
String email=(String)request.getAttribute("email");
String motdepasse=(String)request.getAttribute("motdepasse");
List<User> liste =  (ArrayList<User>) session.getAttribute("liste");
%>
</body>
<h1>Bienvenue <%out.print(prenom+" "+nom); %></h1>
<table>
	<thead>
		<tr>
			<td>Nom</td>
			<td>Prenom</td>
			<td>Pseudo</td>
			<td>Email</td>
		</tr>
	</thead>
	<tbody>
		<%
		for (User u : liste){
		%>
		<tr>
			<td><%out.print(u.getNom()); %></td>
			<td><%out.print(u.getPrenom()); %></td>
			<td><%out.print(u.getPseudo()); %></td>
			<td><%out.print(u.getEmail()); %></td>
		</tr>
		<%
		}
		%>
	</tbody>
	<a href="/MonServletJsp/monservlet2" >Se Déconnecter</a>
</table>
</html>