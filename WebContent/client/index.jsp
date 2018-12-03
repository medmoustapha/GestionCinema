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
    <div class="row">
    <div class="col-md-12 col-sm-6 col-xs-12">
      <jsp:include page="entet.jsp" />
    </div>
    </div>
    <div class="row">
     
     <div class="col-md-12 col-sm-6 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">List des Cinemas</div>
	   <div class="panel-body">
	     <table class="table table-striped">
	     <thead>
	     <th>Nom</th><th>Adress</th><th>Detail</th>
	     </thead>
	     <tbody>
	     <% if(cinemas!=null){ %>
	     <% for(Cinema c:cinemas){ %>
	     <tr>
	     <td><%= c.getName() %></td>
	     <td><%= c.getAdress() %></td>
	     <td><a href="films.jsp?idCinema=<%= c.getId()%>">voir films</a></td><td></td>
	     </tr>
	     <%} %>
	     
	     <%} 
	     else{
	    	 
		     
		     %>
		    
					<tr>
					 	
					   <td colspan="5">	
					     <center>
							<font color=red>
							Aucune Cinema exist</font>
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