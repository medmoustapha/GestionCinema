<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<% 
			ControllerServiceProxy cp=new ControllerServiceProxy();
            String id=request.getParameter("idTicket");
            cp.suppTicket(Long.parseLong(id));
            response.sendRedirect("tickets.jsp");
			
			
%>