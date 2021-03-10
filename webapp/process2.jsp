<%-- 
    Document   : process2
    Created on : Jul 5, 2019, 1:18:09 AM
    Author     : User
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myblooddonatsystem.*"%>
<jsp:useBean id="dbobj" class="com.mycompany.myblooddonatsystem.Database2"/>  
<%if(request.getParameter("loginpage").toString().equals("submit")){
        
      String email =request.getParameter("email");
      String pass =request.getParameter("pass");
    
          int r = dbobj.addlogin(email,pass);
     
            if(r==1){
                
                session = request.getSession();
                session.setAttribute("userEmail", email);
                        
                response.sendRedirect("prof.jsp");
            }
            else{
                session.setAttribute("loginerror", "Invalied PassWord or Email. Try Again.");
                response.sendRedirect("log_in.jsp");
            }
                
     }
     else{
        response.sendRedirect("log_in.jsp");  
         }
%>
