<%@page import="java.text.DateFormat"%>
<%@page import="gestion.cinema.service.Ticket"%>
<%@page import="gestion.cinema.service.Utilisateur"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
			String idU=(String)session.getAttribute("login");
			
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Utilisateur u=cp.login(idU);
			Ticket  tickets []=null;
			if(u!=null){
				tickets=cp.ticketsParUtilisateur(u.getId());
				
			}
			
			
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tickets</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<p></p>

<div class="container">
<jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-12 col-sm-6 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">List des Cinemas</div>
	   <div class="panel-body">
	     <table class="table table-striped">
	     <thead>
	     <th>ID</th><th>Film</th><th>Date Projection Film</th><th>Salle de Projection</th><th>Monatnt</th>
	     </thead>
	     <tbody>
	     <% if(tickets!=null) { %>
	     <% for(Ticket t:tickets){ %>
	     <tr>
	     <td><%=t.getId() %></td>
	     <td><%= t.getFilm().getTitre() %></td>
	     <td><%= t.getFilm().getDateProjection() %></td>
	     <td>salle <%= t.getFilm().getSalle().getId() %></td>
	     <td><%= t.getFilm().getMontant() %></td>
	     </tr>
	     <%} }
	     else{
	    	 
	     
	     %>
	    
				<tr>
				 	
				   <td colspan="5">	
				     <center>
						<font color=red>
						Aucune tickt exist enregistrer par vous</font>
					 </center>
					</td>
				</tr>	
				
	     <%} %>
	     </tbody>
	     </table>
       </div>
     </div>
     
     </div>
     </div>
		
</div>
</body>
</html>