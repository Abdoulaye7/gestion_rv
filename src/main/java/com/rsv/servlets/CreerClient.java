package com.rsv.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.rsv.beans.Client;

/**
 * Servlet implementation class CreerClient
 */
public class CreerClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreerClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//récuperation des données saisies
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		
		String message ="";
		
		if(nom.trim().isEmpty() || prenom.trim().isEmpty() || tel.trim().isEmpty() || email.trim().isEmpty() ) {
			
			message ="Veuillez saisir tous les champs svp !!";
			request.setAttribute("message", message);
			
			//rediriger l'utilsateur vers le formulaire d'inscription
			this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request, response);
			
		}else {
			 message ="Inscription réussi avec succès !";
			 request.setAttribute("message", message);
			 
			 //client
			 Client client = new Client();
			 client.setNom(nom);
			 client.setPrenom(prenom);
			 client.setTelephone(tel);
			 client.setEmail(email);
			 
			 request.setAttribute("client", client);
			 
			 this.getServletContext().getRequestDispatcher("/WEB-INF/infoclient.jsp").forward(request, response);
		}
	}

}
