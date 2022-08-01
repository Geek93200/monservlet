<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="/MonServletJsp/style.css" media="screen" type="text/css" />
<title>Insert title here</title>
</head>
 <body>
        <div id="container">
            <!-- zone de connexion -->
            
            <form action="/MonServletJsp/monservlet2" method="POST">
                <h1>Connexion</h1>
                
                <label><b>Pseudo</b></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="pseudo" required>
				<br>
                <label><b>Mot de passe</b></label>
                <input type="password" placeholder="Entrer le mot de passe" name="mdp" required>
				<br>
                <input type="submit" id='submit' value='Connecter' >
                <div class="a">
	                <a href="/MonServletJsp/monservlet">S'inscrire</a>
                </div>
            </form>
        </div>
    </body>
</html>