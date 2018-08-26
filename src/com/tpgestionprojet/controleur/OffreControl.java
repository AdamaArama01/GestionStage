package com.tpgestionprojet.controleur;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.tpgestionprojet.model.OffreModel;
import com.tpgestionprojet.model.UserModel;
import com.tpgestionprojet.model.VisiteurModel;

public class OffreControl {
	ConnexionBD bdd;
	Connection connec;
	Statement stat;
	ResultSet resultat;
	
	
	
	// methode permettant de determiner l'id d'un user a partir de son nom et password
		public int iduss (String email,String password)
		{
			int idus = 0;
			
			
			try {
				  stat = bdd.connect().createStatement();
				  resultat = stat.executeQuery("select idus from usersi where email = '"+email+"' and password = '"+password+"'");
				  if(resultat.next())
					  idus = resultat.getInt("idus");
				  
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return idus;
		}
	
public void ajouter(OffreModel offrem)
	
	{
		 try {
			 bdd = new ConnexionBD();
		
		
		PreparedStatement ps=bdd.connect().prepareStatement("INSERT INTO offreur (titre,duree,debut,lieu,service,categorie,idvisiteur,idadmin) VALUES(?,?,?,?,?,?,?,?)");
		ps.setString(1, offrem.getTitre());
		ps.setString(2, offrem.getDuree());
		ps.setString(3, offrem.getLieu());
		ps.setString(4, offrem.getService());
		ps.setString(5, offrem.getCategorie());
		ps.setInt(6, offrem.getIdvisiteur());
		ps.setInt(7, offrem.getIdadmin());
		ps.setInt(6, offrem.getIdadmin());
		
		int val = ps.executeUpdate();
		
		
		
		
		//connect = bdd.connect();
	
		//System.out.println("on a reussi controlleur"+val);
		 }
		 
		 catch(Exception ex)
	 		{
	 			System.out.println("erreur ajoutercontruser"+ex.getMessage());
	 		}
}


public  void enreg(UserModel userm)

{
	
	try {
		  bdd = new  ConnexionBD();
		  
		   stat = bdd.connect().createStatement();
		   stat.executeUpdate("INSERT INTO usersi (nom,prenom,email,password,fonction) VALUES('"+userm.getNom()+"','"+userm.getPrenom()+"','"+userm.getEmail()+"','"+userm.getPassword()+"','"+userm.getFonction()+"') ");
	    } 
	catch (SQLException e) 
	     {
		    System.out.println("erreur insertion nouveau user" +e.getMessage());
	     }
	}
}

