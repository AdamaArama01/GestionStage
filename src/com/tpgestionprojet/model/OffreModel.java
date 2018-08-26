package com.tpgestionprojet.model;

public class OffreModel {
	// Déclaration des attributs
	private int idof;
	private String titre;
	private String duree;
	private String debut;
	private String lieu;
	private String service;
	private String categorie;
	private int idvisiteur;
	private int idadmin;
	
	// Les getters
	public int getIdof() {
		return idof;
	}
	public String getTitre() {
		return titre;
	}
	public String getDuree() {
		return duree;
	}
	public String getDebut() {
		return debut;
	}
	public String getLieu() {
		return lieu;
	}
	public String getService() {
		return service;
	}
	public String getCategorie() {
		return categorie;
	}
	public int getIdvisiteur() {
		return idvisiteur;
	}
	public int getIdadmin() {
		return idadmin;
	}
	
	// Les setters
	public void setIdof(int idof) {
		this.idof = idof;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public void setDuree(String duree) {
		this.duree = duree;
	}
	public void setDebut(String debut) {
		this.debut = debut;
	}
	public void setLieu(String lieu) {
		this.lieu = lieu;
	}
	public void setService(String service) {
		this.service = service;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public void setIdvisiteur(int idvisiteur) {
		this.idvisiteur = idvisiteur;
	}
	public void setIdadmin(int idadmin) {
		this.idadmin = idadmin;
	}
	
	// Constructeur sans attributs
	public OffreModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// Constructeur avec attributs
	public OffreModel(int idof, String titre, String duree, String debut, String lieu, String service,
			String categorie, int idvisiteur, int idadmin) {
		super();
		this.idof = idof;
		this.titre = titre;
		this.duree = duree;
		this.debut = debut;
		this.lieu = lieu;
		this.service = service;
		this.categorie = categorie;
		this.idvisiteur = idvisiteur;
		this.idadmin = idadmin;
	}
	
	

}
