<%@page import="gestion.cinema.service.Cinema"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
            String nom=null;
            String idCinema=null;
            String adress=null;
            String action=request.getParameter("action");
			
			idCinema=request.getParameter("idCinema");
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Cinema c=new Cinema();
			c.setAdress("Adress");
			c.setName("name");
			if(idCinema!=null){
				c=cp.getCinema(Long.parseLong(idCinema));
				nom=c.getName();
			    adress=c.getAdress();	
			    
			}
			if(request.getParameter("action")!=null){
				nom=request.getParameter("nom");
				adress=request.getParameter("adress");
			}
			
			if(action!=null && nom!=null && adress!=null){
				
				c=new Cinema();
            if(idCinema!=null){
					c.setId(Long.parseLong(idCinema));
				}
				c.setName(nom);
				c.setAdress(adress);
				cp.creationCinema(c);
				response.sendRedirect("index.jsp");
			}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Cinema</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<div class="container">
     <jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Add Cinema</div>
	   <div class="panel-body">
			<form action="" method="post">
			    <div class="form-group">
					<label class="control-label" for="inputPassword1">Nom <sup>*</sup></label>
					
					  <input class="form-control" type="text" id="nom" placeholder="Nom du Cinema" value="<%=c.getName() %>" name="nom" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Adress <sup>*</sup></label>
					
					  <input class="form-control" type="text" id="adress" value="<%=c.getAdress() %>" placeholder="adress" name="adress" required="required">
				 </div>
				  <div class="control-group">
						<div class="controls">
							<input class="btn btn-large btn-success" type="submit" value="Save" name="action"/>
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