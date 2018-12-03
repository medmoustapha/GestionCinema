<%@page import="gestion.cinema.service.ControllerServiceProxy"%>
<% 
			ControllerServiceProxy cp=new ControllerServiceProxy();
            String idFilm=request.getParameter("idFilm");
            cp.suppFilm(Long.parseLong(idFilm));
            response.sendRedirect("films.jsp");
			
			
%>