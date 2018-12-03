<%@page import="gestion.cinema.service.Utilisateur"%>
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
			Utilisateur u=null;
			if(chercher!=null){
				u=cs.login(chercher);
				if(u==null){
					vide="no data found";
				}
			}
			
			
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Utilisateur</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<div class="container">
     <jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-4 col-sm-6 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Recherche Par Login</div>
	   <div class="panel-body">
			<form action="" method="post">
					<div class="form-group">
					<label class="control-label" for="inputFname1">Login <sup>:</sup></label>
					<div class="controls">
					  <input class="form-control" type="text" name="chercher" required="required">
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
     
     <% if(u!=null){ %>
      <div class="row">
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Utilisateur</div>
	   <div class="panel-body">
	     <table class="table table-striped">
	     <thead>
	     <th>Nom</th><th>Prenom</th><th>Login</th><th>Telephone</th><th>Role</th>
	     </thead>
	     <tbody>
	     <tr>
	     <td><%= u.getNom()%></td>
	     <td><%= u.getPrenom()%></td>
	     <td><%= u.getLogin() %></td>
	     <td><%= u.getTelephone() %></td>
	     <td><%= u.getRole()%></td>
	     
	      <td>
			       <a href="editUtil.jsp?idUtil=<%= u.getId()%>"><button class="btn btn-default btn-xs btn-detail">Edit</button></a>
			       <a onClick="return confirm('Etes vous sure?')" href="deleteUtil.jsp?idUtil=<%= u.getId()%>"><button class="btn btn-danger btn-xs btn-delete">Delete</button></a>
			   </td>
	     </tr>
	    
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
						<%=vide %><% } %></font></div>
		</div>	
</div>
</body>
</html>