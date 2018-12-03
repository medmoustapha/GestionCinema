<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<% 
			ControllerServiceProxy cp=new ControllerServiceProxy();
            String idSalle=request.getParameter("idSalle");
            cp.suppSalle(Long.parseLong(idSalle));
            response.sendRedirect("salle.jsp");
			
			
%>