/**
 * ControllerService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package gestion.cinema.service;

public interface ControllerService extends java.rmi.Remote {
    public gestion.cinema.service.Cinema creationCinema(gestion.cinema.service.Cinema arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Cinema getCinema(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Salle creationSalle(gestion.cinema.service.Salle arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Salle getSalle(java.lang.Long arg0) throws java.rmi.RemoteException;
    public void suppCinema(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Cinema[] listeCinemas() throws java.rmi.RemoteException;
    public void suppFilm(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Film creationFilm(gestion.cinema.service.Film arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Ticket[] ticketsParFilm(java.lang.Long arg0) throws java.rmi.RemoteException;
    public void suppUtilisateur(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Utilisateur getUtilisateur(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Film getFilm(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Salle[] listSalles() throws java.rmi.RemoteException;
    public gestion.cinema.service.Utilisateur[] listUtilisateurs() throws java.rmi.RemoteException;
    public gestion.cinema.service.Ticket[] listTickets() throws java.rmi.RemoteException;
    public gestion.cinema.service.Ticket creationTicket(gestion.cinema.service.Ticket arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Ticket getTicket(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Salle[] sallesParCinema(java.lang.Long arg0) throws java.rmi.RemoteException;
    public void suppSalle(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Film[] listFilms() throws java.rmi.RemoteException;
    public void suppTicket(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Film[] filmParActeur(java.lang.String arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Film[] filmParTitre(java.lang.String arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Film[] filmsParSalle(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Film[] filmsParCinema(java.lang.Long arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Utilisateur login(java.lang.String arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Utilisateur creationUtilisateur(gestion.cinema.service.Utilisateur arg0) throws java.rmi.RemoteException;
    public gestion.cinema.service.Ticket[] ticketsParUtilisateur(java.lang.Long arg0) throws java.rmi.RemoteException;
}
