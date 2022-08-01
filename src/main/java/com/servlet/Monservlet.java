package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Monservlet
 */
@WebServlet(name="Monservlet", urlPatterns= {"/monservlet"})
public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Monservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("Inscrire.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String pseudo=request.getParameter("pseudo");
		String email=request.getParameter("email");
		String motdepasse=request.getParameter("mdp");
		String motdepasseconfirme=request.getParameter("mdpconfirme");
		
		if(nom.equals("") || prenom.equals("") || pseudo.equals("") || motdepasse.equals("") || motdepasseconfirme.equals("")) {
			request.setAttribute("error", "Veuillez renseigner tous les champs");
			request.getRequestDispatcher("Inscrire.jsp").forward(request,response);
		}else {	
			if(motdepasse.equals(motdepasseconfirme)){				
				User user = new User(nom, prenom, pseudo, email);
				
				List<User> liste =  (ArrayList<User>) session.getAttribute("liste");
				if(liste == null)
					liste = new ArrayList<User>();
				
				liste.add(user);
				
				request.setAttribute("nom", nom);
				request.setAttribute("prenom", prenom);
				request.setAttribute("pseudo", pseudo);
				request.setAttribute("email", email);
				request.setAttribute("mdp", motdepasse);
				
				session.setAttribute("liste", liste);
				
				request.getRequestDispatcher("Accueil.jsp").forward(request,response);
			}else {
				request.setAttribute("error", "Les mots de passe ne correspondent pas");
				request.getRequestDispatcher("Inscrire.jsp").forward(request,response);
			}
		}
		
	}

}
