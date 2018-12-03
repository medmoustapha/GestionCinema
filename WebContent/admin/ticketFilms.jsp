<%@page import="gestion.cinema.service.Ticket"%>
<%@page import="gestion.cinema.service.Salle"%>
<%@page import="gestion.cinema.service.Film"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
            String chercher=null;
            String vide =null;
			chercher=request.getParameter("chercher");
			ControllerServiceProxy cs=new ControllerServiceProxy();
			
			Film films [] =cs.listFilms();
			Ticket tickets []=null;
			if(chercher!=null){
				tickets=cs.ticketsParFilm(Long.parseLong(chercher));
				if(tickets==null){
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
       <div class="panel-heading">Recherche Par Salle</div>
	   <div class="panel-body">
			<form action="" method="post">
					<div class="form-group">
					<label class="control-label" for="inputFname1">Salle <sup>:</sup></label>
					<div class="controls">
					  <select class="form-control" type="text" id="chercher" name="chercher">
					   <% if(films!=null){ %><% for(Film t:films){ %>
					   <option value="<%= t.getId()%>"><%= t.getTitre()%></option>
					   <% } }
					   else{%>
					    <option value="">Aucun Film</option>
					   <% }%>
					  </select>
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
      <div class="row">
     
     <div class="col-md-10 col-sm-8 col-xs-8">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">List des Ticket</div>
	   <div class="panel-body">
	     <table class="table table-striped">
	     <thead>
	     <th>ID</th><th>film</th><th>Date</th><th>Montant</th>
	     </thead>
	     <tbody>
	     <% if(tickets!=null){ %>
	     <% for(Ticket t:tickets){ %>
	     <tr>
	     <td><%= t.getId() %></td>
	     <td><%= t.getFilm().getTitre() %></td>
	     <td><%= t.getFilm().getDateProjection() %></td>
	     <td><%= t.getFilm().getMontant() %></td>
	     <td>
			       <a href="editTicketjsp?idTicket=<%= t.getId()%>"><button class="btn btn-default btn-xs btn-detail">Edit</button></a>
			       <a onClick="return confirm('Etes vous sure?')" href="deleteticket.jsp?idTicket=<%= t.getId()%>"><button class="btn btn-danger btn-xs btn-delete">Delete</button></a>
			   </td>
	     </tr>
	     <%}  } 
	     else{%>
   	  <tr>
    <td>Aucune Ticket Enregistrer</td>
    
    </tr>
   <% }%>
	     </tbody>
	     </table>
       </div>
     </div>
     
     </div>
     </div>
		
</div>
</body>
</html>