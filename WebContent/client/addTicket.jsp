<%@page import="gestion.cinema.service.Utilisateur"%>
<%@page import="gestion.cinema.service.Film"%>
<%@page import="gestion.cinema.service.Ticket"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
			String idFilm=request.getParameter("idFilm");
			String idU=(String)session.getAttribute("login");
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Ticket ticket =new Ticket();
			Film f=cp.getFilm(Long.parseLong(idFilm));
			Utilisateur u=cp.login(idU);
			ticket.setFilm(f);
			ticket.setUtilisateur(u);
			cp.creationTicket(ticket);
			
			
			     
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ticket</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
 <p></p>
<div class="container">
      <jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Detail Ticket</div>
	   <div class="panel-body">
	      <div class="form-group">
				<label class="control-labal">Titre</label>
				<label class="control-labal"><%= f.getTitre() %></label>
		  </div>
	     <div class="form-group">
				<label class="control-labal">Duree</label>
				<label class="control-labal"><%= f.getDuree() %></label>
		  </div>
	    <div class="form-group">
				<label class="control-labal">Actuer</label>
				<label class="control-labal"><%= f.getActeur() %></label>
		  </div>
	      <div class="form-group">
				<label class="control-labal">Annee Sortier</label>
				<label class="control-labal"><%= f.getAnneeSortie() %></label>
		  </div>
	     <div class="form-group">
				<label class="control-labal">Date Projection</label>
				<label class="control-labal"><%= f.getDateProjection() %></label>
		  </div>
	     <div class="form-group">
				<label class="control-labal">Montant Ticket</label>
				<label class="control-labal"><%= f.getMontant()%></label>
		  </div>
       </div>
     </div>
     
     </div>
   
     </div>
		
</div>
</body>
</html>