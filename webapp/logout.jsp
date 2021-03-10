<%-- 
    Document   : logout
    Created on : Jul 26, 2019, 12:07:41 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myblooddonatsystem.*"%>
<jsp:useBean id="dbobj" class="com.mycompany.myblooddonatsystem.Database2"/>  
<%if (request.getParameter("logout").toString().equals("Logout")) {
    session.invalidate();
    session = request.getSession();
    session.removeAttribute("userEmail");
    response.sendRedirect("log_in.jsp");
}

        
%>

    


    
    
