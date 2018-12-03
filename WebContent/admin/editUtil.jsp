<%@page import="gestion.cinema.service.Utilisateur"%>
<%@page import="gestion.cinema.service.Film"%>
<%@page import="gestion.cinema.service.Salle"%>
<%@page import="gestion.cinema.service.Cinema"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
           
            String action=request.getParameter("action");
			
			String idUtil=request.getParameter("idUtil");
			
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Salle salles [] =cp.listSalles();
			Utilisateur u=cp.getUtilisateur(Long.parseLong(idUtil));
			
			if(action!=null){
				
	            String nom=request.getParameter("nom");
	            String prenom=request.getParameter("prenom");
				String telephone=request.getParameter("telephone");
				String login=request.getParameter("login");
				String passwd=request.getParameter("passwd");
				String role=request.getParameter("role");
			    
				u.setNom(nom);
				u.setPrenom(prenom);
				u.setTelephone(telephone);
				u.setLogin(login);
				u.setMotPass(passwd);
				u.setRole(role);
				cp.creationUtilisateur(u);
				response.sendRedirect("utilisateur.jsp");
			}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Film</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<div class="container">
     <jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Modifier Utilisateur</div>
	   <div class="panel-body">
			<form action="" method="post">
			    <div class="form-group">
					<label class="control-label" >Nom <sup>*</sup></label>
					
					  <input class="form-control" type="text" value="<%=u.getNom()%>" name="nom" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" >Prenom<sup>*</sup></label>
					
					  <input class="form-control" type="text" value="<%= u.getPrenom()%>" name="prenom" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" >Login<sup>*</sup></label>
					
					  <input class="form-control" type="text" value="<%= u.getLogin()%>" name="login" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" >Mot de Pass<sup>*</sup></label>
					
					  <input class="form-control" type="password" value="<%= u.getMotPass() %>" name="passwd" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" >Telephone<sup>*</sup></label>
					
					  <input class="form-control" type="text" value="<%= u.getTelephone()%>" name="telephone" required="required">
				 </div>
				 
				  <div class="form-group">
					<label class="control-label" for="inputFname1">Role <sup>:</sup></label>
					<div class="controls">
					  <select class="form-control" type="text" id="role" name="role">
					  <option <%if("admin"==u.getRole()){%>selected <% }%> >admin</option>
					  <option <%if("user"==u.getRole()){%>selected <% }%> >user</option>
					  
					  </select>
					</div>
				  </div>
				 
				  <div class="control-group">
						<div class="controls">
							<input class="btn btn-large btn-success" type="submit" value="Save" name="action"/>
						</div>
					</div>	
				 </div>	
			  </form>
        </div>
      </div>
     </div>
    </div>
   </div>
</body>
</html>