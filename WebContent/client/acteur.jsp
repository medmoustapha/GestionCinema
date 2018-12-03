<%@page import="gestion.cinema.service.Film"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			String var=null;
            String chercher=null;
            String vide =null;
			chercher=request.getParameter("chercher");
			ControllerServiceProxy cs=new ControllerServiceProxy();
			Film films []=cs.filmParActeur(chercher);
			if(chercher!=null){
				films=cs.filmParActeur(chercher);
				if(films==null){
					vide="no data found";
				}
			}
			
			
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chercher</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<div class="container">
     <jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-4 col-sm-6 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Recherche Par Acteur</div>
	   <div class="panel-body">
			<form action="" method="post">
					<div class="form-group">
					<label class="control-label" for="inputFname1">Mot clet <sup>:</sup></label>
					<div class="controls">
					  <input class="form-control" type="text" id="chercher" placeholder="chercher" name="chercher" required="required">
					</div>
				  </div>	  
				  <div class="control-group">
						<div class="controls">
							<input class="btn btn-large btn-success" type="submit" value="Chercher" name="action"/>
						</div>
					</div>		
			  </form>
       </div>
     </div>
     
     </div>
     <div class="col-md-2 col-sm-6 col-xs-12"></div>
     </div>
     <% if(films!=null){ %>
      <div class="row">
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">List des Films</div>
	   <div class="panel-body">
	     <table class="table table-striped">
	     <thead>
	     <th>Titre</th><th>Duree</th><th>Acteur</th><th>Annee Sortie</th><th>Date Projection</th><th>Réalisateur</th>
	     <th>Type</th><th>Prix de Ticket</th>
	     </thead>
	     <tbody>
	     <% for(Film f:films){ %>
	     <tr>
	     <td><%= f.getTitre() %></td>
	     <td><%= f.getDuree() %></td>
	     <td><%= f.getActeur() %></td>
	     <td><%= f.getAnneeSortie() %></td>
	     <td><%= f.getDateProjection() %></td>
	     <td><%= f.getRealisateur()%></td>
	     <td><%= f.getGenre()%></td>
	     <td><%= f.getMontant()%></td>
	     <td><a href="addTicket.jsp?idFilm=<%= f.getId()%>">Réserver</a></td><td></td>
	     </tr>
	     <%} %>
	     </tbody>
	     </table>
       </div>
     </div>
     
     </div>
   
     </div>
		<%} %>
		<div class="control-group">
						<% if(vide!=null){ %>
						<font color=red>
						<%=vide %><%} %></font></div>
		</div>	
</div>
</body>
</html>