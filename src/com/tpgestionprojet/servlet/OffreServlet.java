package com.tpgestionprojet.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tpgestionprojet.controleur.OffreControl;
import com.tpgestionprojet.controleur.UserControl;
import com.tpgestionprojet.model.OffreModel;
import com.tpgestionprojet.model.UserModel;

@WebServlet("/OffreServlet")
public class OffreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public OffreServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/OffreVue.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String titre = request.getParameter("titre");
		String duree = request.getParameter("duree");
		String debut = request.getParameter("debut");
		String lieu = request.getParameter("lieu");
		String service = request.getParameter("service");
		String categorie = request.getParameter("categorie");
		//int idvisiteur = request.getParameter("idvisiteur");
		//int idadmin = request.getParameter("idadmin");
		
		OffreModel offrs = new OffreModel();
		OffreControl offcont = new OffreControl();
		
		offrs.setTitre(titre);
		offrs.setDuree(duree);
		offrs.setDebut(debut);
		offrs.setLieu(lieu);
		offrs.setService(service);
		offrs.setCategorie(categorie);
		//offrs.setIdvisiteur(idvisiteur);
		//offrs.setIdadmin(idadmin);
		
		offcont.ajouter(offrs);
		
		
		
		System.out.println("enregistrement effectue ! merci bravo1 retour a la base");
		

	}

}
