package com.tpgestionprojet.controleur;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import com.tpgestionprojet.model.UserModel;

public class UserControl {
	
	ConnexionBD bdd;
	Connection connec;
	Statement stat ;
	
	
	
	
	
	public void ajouter(UserModel userm)
	
	{
		 try {
			 bdd = new ConnexionBD();
		
		
		PreparedStatement ps=bdd.connect().prepareStatement("INSERT INTO usersi (nom,prenom,email,password,fonction) VALUES(?,?,?,?,?)");
		ps.setString(1, userm.getNom());
		ps.setString(2, userm.getPrenom());
		ps.setString(3, userm.getEmail());
		ps.setString(4, userm.getPassword());
		ps.setString(5, userm.getFonction());
		
		System.out.println(userm.getNom());
		System.out.println(userm.getPrenom());
		System.out.println(userm.getFonction());
		
		int val = ps.executeUpdate();
		
		//connect = bdd.connect();
	
		
		System.out.println("on a reussi controlleur"+val);
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
