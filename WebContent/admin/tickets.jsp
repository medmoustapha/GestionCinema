<%@page import="gestion.cinema.service.Ticket"%>
<%@page import="gestion.cinema.service.Cinema"%>
<%@page import="gestion.cinema.service.Film"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Ticket tickets []=cp.listTickets();
			
			
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cinemas</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<p></p>

<div class="container">
<jsp:include page="entet.jsp" />
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