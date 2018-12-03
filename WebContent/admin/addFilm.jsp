<%@page import="gestion.cinema.service.Film"%>
<%@page import="gestion.cinema.service.Salle"%>
<%@page import="gestion.cinema.service.Cinema"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
            String titre=null;
            String acteur=null;
            String annee=null;
            String dateProjection=null;
            String genre=null;
            String salle=null;
            String cinema=null;
            String realisateur=null;
            String idFilm=null;
            String duree=null;
            String montant=null;
            String action=request.getParameter("action");
			
			idFilm=request.getParameter("idFilm");
			
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Salle salles [] =cp.listSalles();
			Film f=new Film();
			Cinema cs=new Cinema();
			cs.setId(Long.parseLong("0"));
			Salle s=new Salle();
			s.setCinema(cs);
			s.setId(Long.parseLong("0"));
			f.setSalle(s);
			if(idFilm!=null){
				f=cp.getFilm(Long.parseLong(idFilm));
				}
			
			if(action!=null){
				montant=request.getParameter("montant");
				duree=request.getParameter("duree");
	            titre=request.getParameter("titre");
	            acteur=request.getParameter("acteur");
				annee=request.getParameter("annee");
				dateProjection=request.getParameter("dateProjection");
				genre=request.getParameter("genre");
				realisateur=request.getParameter("realisateur");
				salle=request.getParameter("salle");
				cinema=request.getParameter("cinema");
				
				Cinema c=cp.getCinema(Long.parseLong(cinema));
				Salle salleS=cp.getSalle(Long.parseLong(salle));
				Cinema cinemaS=cp.getCinema(Long.parseLong(cinema));
            if(idFilm != null){
					f.setId(Long.parseLong(idFilm));
				}
                f.setDuree(Integer.parseInt(duree));
                f.setMontant(Double.parseDouble(montant));
				f.setTitre(titre);
				f.setActeur(acteur);
				f.setAnneeSortie(Integer.parseInt(annee));
				f.setDateProjection(dateProjection);
				f.setGenre(genre);
				f.setRealisateur(realisateur);
				f.setSalle(salleS);
				f.setCinema(cinemaS);
				cp.creationFilm(f);
				response.sendRedirect("films.jsp");
			}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Film</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<div class="container">
     <jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Add Film</div>
	   <div class="panel-body">
			<form action="" method="post">
			    <div class="form-group">
					<label class="control-label" for="inputPassword1">Titre <sup>*</sup></label>
					
					  <input class="form-control" type="text" id="titre"value="<%=f.getTitre() %>" name="titre" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Acteur<sup>*</sup></label>
					
					  <input class="form-control" type="text" id="acteur" value="<%= f.getActeur() %>" name="acteur" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Date Projection<sup>*</sup></label>
					
					  <input class="form-control" type="text" value="<%= f.getDateProjection()%>" name="dateProjection" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Réalisateur<sup>*</sup></label>
					
					  <input class="form-control" type="text" value="<%= f.getRealisateur() %>" name="realisateur" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Montant<sup>*</sup></label>
					
					  <input class="form-control" type="number" id="montant" value="<%= f.getMontant() %>" name="montant" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Duree<sup>*</sup></label>
					
					  <input class="form-control" type="number" value="<%= f.getDuree() %>" name="duree" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Année Sortie<sup>*</sup></label>
					
					  <input class="form-control" type="number" value="<%= f.getAnneeSortie() %>" name="annee" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputFname1">Salle <sup>:</sup></label>
					<div class="controls">
					  <select class="form-control" type="text" id="salle" name="salle">
					   <% for(Salle s1:salles){ %>
					   <option <%if(s1.getId()==f.getSalle().getId()){%>selected<% }%> value="<%= s1.getId()%>">salle-<%= s1.getId()%></option>
					   <% } %>
					  </select>
					</div>
				  </div>
				 <div class="form-group">
					<label class="control-label" for="inputFname1">Cinema <sup>:</sup></label>
					<div class="controls">
					  <select class="form-control" type="text" id="cinema" name="cinema">
					   <% for(Salle s1:salles){ %>
					   <option  value="<%= s1.getCinema().getId()%>"><%= s1.getCinema().getAdress()%></option>
					   <% } %>
					  </select>
					</div>
				  </div>
				  
				  <div class="form-group">
					<label class="control-label" for="inputFname1">Genre <sup>:</sup></label>
					<div class="controls">
					  <select class="form-control" type="text" id="dispo" name="genre">
					  <option <%if(f.getGenre().equals("documentaire")){%>selected <% }%> >documentaire</option>
					  
					   <option <%if(f.getGenre().equals("action")){%>selected <% }%> >action</option>
					   <option <%if(f.getGenre().equals("animation")){%>selected<% }%> value="animation">animation</option>
					   <option <%if(f.getGenre().equals("biographique")){%>selected <% }%> >biographique</option>
					   <option <%if(f.getGenre().equals("comédia")){%>selected <% }%> >comédia</option>
					  </select>
					</div>
				  </div>
				 
				  <div class="control-group">
						<div class="controls">
							<input class="btn btn-large btn-success" type="submit" value="Save" name="action"/>
						</div>
					</div>	
				 </div>	
			  </form>
        </div>
      </div>
     </div>
    </div>
   </div>
</body>
</html>