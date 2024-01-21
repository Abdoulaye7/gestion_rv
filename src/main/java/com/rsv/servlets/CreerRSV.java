package com.rsv.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.rsv.beans.Client;
import com.rsv.beans.Reservation;

/**
 * Servlet implementation class CreerRSV
 */
public class CreerRSV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreerRSV() {
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
				String type = request.getParameter("type");
				String option = request.getParameter("option");
				double prix;
				
				try {
					prix = Double.parseDouble(request.getParameter("prix"));
					
				} catch (NumberFormatException e) {
					prix=0.5;
				}
				
				
				String message ="";
				
				

				// Vérifiez si la variable est nulle avant d'appeler trim()
				if (nom == null || prenom == null || tel == null || email == null || type == null || option == null || prix == 0.5) {
				    message = "Veuillez saisir tous les champs svp !!";
				    request.setAttribute("message", message);

				    // Redirigez l'utilisateur vers le formulaire d'inscription
				    this.getServletContext().getRequestDispatcher("/reservation.jsp").forward(request, response);

				} else {
				    // Vérifiez si la variable est vide après avoir assuré qu'elle n'est pas nulle
				    if (nom.trim().isEmpty() || prenom.trim().isEmpty() || tel.trim().isEmpty() ||
				            email.trim().isEmpty() || type.trim().isEmpty() || option.trim().isEmpty() || prix == 0.5) {

				        message = "Veuillez saisir tous les champs svp !!";
				        request.setAttribute("message", message);

				        // Redirigez l'utilisateur vers le formulaire d'inscription
				        this.getServletContext().getRequestDispatcher("/reservation.jsp").forward(request, response);

				    } else {
				        message = "Inscription réussie avec succès !";
				        request.setAttribute("message", message);

				        // Client
				        Client client = new Client();
				        Reservation reservation = new Reservation();
				        reservation.setType(type);
				        reservation.setOption(option);
				        reservation.setMontant(prix);
				       

				        client.setNom(nom);
				        client.setPrenom(prenom);
				        client.setTelephone(tel);
				        client.setEmail(email);
				        client.setReservation(reservation);

				        request.setAttribute("client", client);

				        this.getServletContext().getRequestDispatcher("/WEB-INF/inforsv.jsp").forward(request, response);
				    }
				}
	}

}
