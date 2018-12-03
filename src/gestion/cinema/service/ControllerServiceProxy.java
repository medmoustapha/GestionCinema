package gestion.cinema.service;

public class ControllerServiceProxy implements gestion.cinema.service.ControllerService {
  private String _endpoint = null;
  private gestion.cinema.service.ControllerService controllerService = null;
  
  public ControllerServiceProxy() {
    _initControllerServiceProxy();
  }
  
  public ControllerServiceProxy(String endpoint) {
    _endpoint = endpoint;
    _initControllerServiceProxy();
  }
  
  private void _initControllerServiceProxy() {
    try {
      controllerService = (new gestion.cinema.service.ControllerServiceServiceLocator()).getControllerServicePort();
      if (controllerService != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)controllerService)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)controllerService)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (controllerService != null)
      ((javax.xml.rpc.Stub)controllerService)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public gestion.cinema.service.ControllerService getControllerService() {
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService;
  }
  
  public gestion.cinema.service.Cinema creationCinema(gestion.cinema.service.Cinema arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.creationCinema(arg0);
  }
  
  public gestion.cinema.service.Cinema getCinema(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.getCinema(arg0);
  }
  
  public gestion.cinema.service.Salle creationSalle(gestion.cinema.service.Salle arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.creationSalle(arg0);
  }
  
  public gestion.cinema.service.Salle getSalle(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.getSalle(arg0);
  }
  
  public void suppCinema(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    controllerService.suppCinema(arg0);
  }
  
  public gestion.cinema.service.Cinema[] listeCinemas() throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.listeCinemas();
  }
  
  public void suppFilm(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    controllerService.suppFilm(arg0);
  }
  
  public gestion.cinema.service.Film creationFilm(gestion.cinema.service.Film arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.creationFilm(arg0);
  }
  
  public gestion.cinema.service.Ticket[] ticketsParFilm(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.ticketsParFilm(arg0);
  }
  
  public void suppUtilisateur(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    controllerService.suppUtilisateur(arg0);
  }
  
  public gestion.cinema.service.Utilisateur getUtilisateur(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.getUtilisateur(arg0);
  }
  
  public gestion.cinema.service.Film getFilm(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.getFilm(arg0);
  }
  
  public gestion.cinema.service.Salle[] listSalles() throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.listSalles();
  }
  
  public gestion.cinema.service.Utilisateur[] listUtilisateurs() throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.listUtilisateurs();
  }
  
  public gestion.cinema.service.Ticket[] listTickets() throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.listTickets();
  }
  
  public gestion.cinema.service.Ticket creationTicket(gestion.cinema.service.Ticket arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.creationTicket(arg0);
  }
  
  public gestion.cinema.service.Ticket getTicket(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.getTicket(arg0);
  }
  
  public gestion.cinema.service.Salle[] sallesParCinema(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.sallesParCinema(arg0);
  }
  
  public void suppSalle(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    controllerService.suppSalle(arg0);
  }
  
  public gestion.cinema.service.Film[] listFilms() throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.listFilms();
  }
  
  public void suppTicket(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    controllerService.suppTicket(arg0);
  }
  
  public gestion.cinema.service.Film[] filmParActeur(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.filmParActeur(arg0);
  }
  
  public gestion.cinema.service.Film[] filmParTitre(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.filmParTitre(arg0);
  }
  
  public gestion.cinema.service.Film[] filmsParSalle(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.filmsParSalle(arg0);
  }
  
  public gestion.cinema.service.Film[] filmsParCinema(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.filmsParCinema(arg0);
  }
  
  public gestion.cinema.service.Utilisateur login(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.login(arg0);
  }
  
  public gestion.cinema.service.Utilisateur creationUtilisateur(gestion.cinema.service.Utilisateur arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.creationUtilisateur(arg0);
  }
  
  public gestion.cinema.service.Ticket[] ticketsParUtilisateur(java.lang.Long arg0) throws java.rmi.RemoteException{
    if (controllerService == null)
      _initControllerServiceProxy();
    return controllerService.ticketsParUtilisateur(arg0);
  }
  
  
}