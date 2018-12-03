<%@page import="gestion.cinema.service.Utilisateur"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			String var=null;
            String login=null;
			login=request.getParameter("login");
			String passwd=request.getParameter("passwd");
			String nom=request.getParameter("nom");
			String prenom=request.getParameter("prenom");
			String telephone=request.getParameter("telephone");
			
			if(login!=null && passwd!=null && nom!=null && prenom!=null && telephone!=null){
				%>
				<%= login %>
				<%= nom %>
				<%= prenom %>
				<%= telephone %>
				<%= passwd %>
				<%
				ControllerServiceProxy cp=new ControllerServiceProxy();
				Utilisateur u=new Utilisateur();
				u.setLogin(login);
				u.setMotPass(passwd);
				u.setNom(nom);
				u.setPrenom(prenom);
				u.setTelephone(telephone);
				u.setRole("user");
				cp.creationUtilisateur(u);
				response.sendRedirect("login.jsp");
			}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enregister</title>
<link id="callCss" rel="stylesheet" href="css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="css/style.css"/>
</head>
<body>
<p></p>
<div class="container">
<jsp:include page="entet.jsp" />
     <div class="row">
     <div class="col-md-2 col-sm-6 col-xs-12"></div>
     <div class="col-md-8 col-sm-6 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Login</div>
	   <div class="panel-body">
			<form action="" method="post">
			<div class="form-group">
					<label class="control-label" for="inputPassword1">Nom <sup>*</sup></label>
					
					  <input class="form-control" type="text" id="nom" placeholder="nom" name="nom" required="required">
				</div>
				<div class="form-group">
					<label class="control-label" for="inputPassword1">Prenom <sup>*</sup></label>
					
					  <input class="form-control" type="text" id="prenom" placeholder="prenom" name="prenom" required="required">
				</div>
				<div class="form-group">
					<label class="control-label" for="inputPassword1">Telephone <sup>*</sup></label>
					
					  <input class="form-control" type="text" id="telephone" placeholder="telephone" name="telephone" required="required">
				</div>
					<div class="form-group">
					<label class="control-label" for="inputFname1">login <sup>*</sup></label>
					<div class="controls">
					  <input class="form-control" type="text" id="login" placeholder="login" name="login" required="required">
					</div>
				  </div>	  
				<div class="form-group">
					<label class="control-label" for="inputPassword1">Password <sup>*</sup></label>
					
					  <input class="form-control" type="password" id="login" placeholder="Password" name="passwd" required="required">
				</div>
				
				  <div class="control-group">
						<div class="controls">
							<input class="btn btn-large btn-success" type="submit" value="signIN" name="action"/>
						</div>
					</div>		
			  </form>
       </div>
     </div>
     
     </div>
     <div class="col-md-2 col-sm-6 col-xs-12"></div>
     </div>
		
</div>
</body>
</html>