<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/MonServletJsp/style.css" media="screen" type="text/css" />
<title>INSCRIPTION</title>
</head>
<body>
<div id="container">
<form method="Post" action="/MonServletJsp/monservlet">
	<h1>Inscription</h1>
	<%
		if(request.getAttribute("error") != null){
			%>
			<p class="error"><%= (String) request.getAttribute("error") %></p>
			<%
		}
	%>
  <label for="fname">Nom:</label><br>
  <input type="text" id="nom" name="nom" placeholder=""><br>
  <label for="lname">Prenom:</label><br>
  <input type="text" id="prenom" name="prenom" placeholder=""><br><br>
  <label for="lname">Pseudo:</label><br>
  <input type="text" id="pseudo" name="pseudo" placeholder=""><br><br>
  <label for="lname">E-mail:</label><br>
  <input type="email" id="email" name="email" placeholder=""><br><br>
  <label for="lname">Mot de passe:</label><br>
  <input type="password" id="mdp" name="mdp"><br><br>
  <label for="lname">Confirmer votre mot de passe:</label><br>
  <input type="password" id="mdpconfirme" name="mdpconfirme"><br><br>
  <input type="submit" value="S'inscrire">
  <br>
  <a href="/MonServletJsp/monservlet2">Se connecter</a>
</form>
</div> 
</body>
</html>