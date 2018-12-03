<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<% 
			ControllerServiceProxy cp=new ControllerServiceProxy();
            String id=request.getParameter("idUtil");
            cp.suppUtilisateur(Long.parseLong(id));
            response.sendRedirect("utilisater.jsp");
			
			
%>