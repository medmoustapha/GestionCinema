<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<% 
			ControllerServiceProxy cp=new ControllerServiceProxy();
            String idCinema=request.getParameter("idCinema");
            cp.suppCinema(Long.parseLong(idCinema));
            response.sendRedirect("index.jsp");
			
			
%>