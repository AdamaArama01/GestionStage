package com.tpgestionprojet.servlet;

import java.io.IOException;	
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.tpgestionprojet.controleur.OffreControl;
//import com.tpgestionprojet.controleur.UserControl;
//import com.tpgestionprojet.controleur.UserControl;
import com.tpgestionprojet.controleur.VisiteurControl;
import com.tpgestionprojet.model.OffreModel;
//import com.tpgestionprojet.model.UserModel;

@WebServlet("/OffreServlet")
public class OffreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public OffreServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		VisiteurControl vst = new VisiteurControl();
		String ids = request.getParameter("idvis");
		int idse = Integer.parseInt(ids);
		String libelle = vst.RecupererLienOffre(idse);
		request.setAttribute("lib", libelle);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/OffreVue.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {    
		HttpSession session = request.getSession ();
		
		String titre = request.getParameter("titre");
		String description = request.getParameter("description");
		String duree = request.getParameter("duree");
		String debut = request.getParameter("debut");
		String lieu = request.getParameter("lieu");
		String service = request.getParameter("service");
		String categorie = request.getParameter("categorie");
		//String idvisiteur = request.getParameter("idvisiteur");
		//String idadmin = request.getParameter("idadmin");
		
		int idad = (int) session.getAttribute("id");
		int idviss = (int) session.getAttribute("ide");

		OffreControl offcont = new OffreControl();
		OffreModel offrs = new OffreModel();
		
		
		offrs.setTitre(titre);
		offrs.setDescription(description);
		offrs.setDuree(duree);
		offrs.setDebut(debut);
		offrs.setLieu(lieu);
		offrs.setService(service);
		offrs.setCategorie(categorie);
		offrs.setIdvisiteur(idviss);
		offrs.setIdadmin(idad);
		
		offcont.ajouter(offrs);
	}

}
