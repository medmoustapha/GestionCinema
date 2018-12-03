<%@page import="gestion.cinema.service.Salle"%>
<%@page import="gestion.cinema.service.Cinema"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
			
            String etat=null;
            String idSalle=null;
            String dispo=null;
            String cinema=null;
            String place=null;
            String action=request.getParameter("action");
			
			idSalle=request.getParameter("idSalle");
			
			ControllerServiceProxy cp=new ControllerServiceProxy();
			Cinema cinemas []=cp.listeCinemas();
			Salle s=new Salle();
			Cinema cs=new Cinema();
			cs.setId(Long.parseLong("0"));
			s.setCinema(cs);
			if(idSalle!=null){
				s=cp.getSalle(Long.parseLong(idSalle));
				}
			
			if(action!=null){
				etat=request.getParameter("etat");
				dispo=request.getParameter("dispo");
				place=request.getParameter("place");
				cinema=request.getParameter("cinema");
				Cinema c=cp.getCinema(Long.parseLong(cinema));
            if(idSalle!=null){
					s.setId(Long.parseLong(idSalle));
				}
				s.setDisponible(dispo);
				s.setCinema(c);
				s.setEtat(etat);
				s.setNbPlaces(Integer.parseInt(place));
				cp.creationSalle(s);
				response.sendRedirect("salle.jsp");
			}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Salle</title>
<link id="callCss" rel="stylesheet" href="../css/bootstrap.min.css" media="screen"/>
<link id="callCss" rel="stylesheet" href="../css/style.css"/>
</head>
<body>
<div class="container">
     <jsp:include page="entet.jsp" />
     <div class="row">
     
     <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="panel panel-primary spacer">
       <div class="panel-heading">Add Salle</div>
	   <div class="panel-body">
			<form action="" method="post">
			    <div class="form-group">
					<label class="control-label" for="inputPassword1">Etat <sup>*</sup></label>
					
					  <input class="form-control" type="text" id="etat" placeholder="Etat du Salle" value="<%= s.getEtat() %>" name="etat" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputPassword1">Nombre De Place<sup>*</sup></label>
					
					  <input class="form-control" type="text" id="place" value="<%= s.getNbPlaces() %>" placeholder="Nombre De Place" name="place" required="required">
				 </div>
				 <div class="form-group">
					<label class="control-label" for="inputFname1">Cinema <sup>:</sup></label>
					<div class="controls">
					  <select class="form-control" type="text" id="cinema" name="cinema">
					   <% for(Cinema c:cinemas){ %>
					   <option <%if(c.getId()==s.getCinema().getId()){%>selected<% }%> value="<%= c.getId()%>"><%= c.getName()%></option>
					   <% } %>
					  </select>
					</div>
				  </div>
				  <div class="form-group">
					<label class="control-label" for="inputFname1">Disponible <sup>:</sup></label>
					<div class="controls">
					  <select class="form-control" type="text" id="dispo" name="dispo">
					   <option <%if("oui"==s.getDisponible()){%>selected <% }%> value="oui">Oui</option>
					   <option <%if("non"==s.getDisponible()){%>selected<% }%> value="non">Non</option>
					   
					  </select>
					</div>
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