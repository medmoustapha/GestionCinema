<%@page import="gestion.cinema.service.Salle"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@page import="gestion.cinema.service.Film"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
			String idCinema=request.getParameter("idCinema");
			
				ControllerServiceProxy cp=new ControllerServiceProxy();
			    Salle salles []  =cp.listSalles();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Salles</title>
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
       <div class="panel-heading"><a href="addSalle.jsp"><button class="btn btn-primary btn-detail">New Salle</button></a></div>
	   <div class="panel-body">
	     <table class="table table-striped">
	     <thead>
	     <th>ID</th><th>Nom</th><th>Nombre des Places</th><th>Disponiblité</th><th>Etat</th><th>Cinema</th>
	     </thead>
	     <tbody>
	     <% if(salles!=null){ %>
	     <% for(Salle s:salles){ %>
	     <tr>
	     <td><%= s.getId() %></td>
	     <td>salle <%= s.getId() %></td>
	     <td><%= s.getNbPlaces() %></td>
	     <td><%= s.getDisponible() %></td>
	     <td><%= s.getEtat() %></td>
	     <td><%= s.getCinema().getName()%></td>
	     
	     <td>
			       <a href="addSalle.jsp?idSalle=<%= s.getId()%>"><button class="btn btn-default btn-xs btn-detail">Edit</button></a>
			       <a onClick="return confirm('Etes vous sure?')" href="deleteSalle.jsp?idSalle=<%= s.getId()%>"><button class="btn btn-danger btn-xs btn-delete">Delete</button></a>
			   </td>
	     </tr>
	     <%}
	     } 
	     else{%>
	    	  <tr>
	     <td>Aucune Salle Enregistrer</td>
	     
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