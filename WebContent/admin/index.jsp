<%@page import="gestion.cinema.service.Cinema"%>
<%@page import="gestion.cinema.service.Film"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Cinema [] cinemas=cp.listeCinemas();
			
			
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
       <div class="panel-heading"><a href="addCinema.jsp"><button class="btn btn-primary btn-detail">AddCinema</button></a></div>
	   <div class="panel-body">
	     <table class="table table-striped">
	     <thead>
	     <th>Nom</th><th>Adress</th><th>Action</th>
	     </thead>
	     <tbody>
	     <% if(cinemas!=null){ %>
	     <% for(Cinema c:cinemas){ %>
	     <tr>
	     <td><%= c.getName() %></td>
	     <td><%= c.getAdress() %></td>
	     <td>
			       <a href="addCinema.jsp?idCinema=<%= c.getId()%>"><button class="btn btn-default btn-xs btn-detail">Edit</button></a>
			       <a onClick="return confirm('Etes vous sure?')" href="deleteCinema.jsp?idCinema=<%= c.getId()%>"><button class="btn btn-danger btn-xs btn-delete">Delete</button></a>
			   </td>
	     </tr>
	     <%}  } 
	     else{%>
   	  <tr>
    <td>Aucune Cinema Enregistrer</td>
    
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