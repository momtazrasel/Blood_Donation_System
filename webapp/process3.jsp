<%-- 
    Document   : process3
    Created on : Jul 12, 2019, 1:20:26 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myblooddonatsystem.*"%>
<jsp:useBean id="dbobj" class="com.mycompany.myblooddonatsystem.Database3"/>  
<%if(request.getParameter("signuppage").toString().equals("submit")){
        
        String firstname =request.getParameter("firstname");
        String surname =request.getParameter("surname");
        String bloodgroup =request.getParameter("blood_group");
        String email =request.getParameter("email");
        String phone =request.getParameter("phone");
        String pass =request.getParameter("pass");
        String con_pass =request.getParameter("con_pass");
        String calendar =request.getParameter("calendar");
        String address =request.getParameter("address");
        
        if(pass.equals(con_pass)){
            dbobj.addsign(firstname,surname,bloodgroup,email,phone,pass,con_pass,calendar,address);

            response.sendRedirect("log_in.jsp");
        }
        
        else{
            
         response.sendRedirect("sign_up.jsp");
        }
         
    }
     else{
            session = request.getSession();
            session.setAttribute("signuperror", "Create Error.Try again Please."); 
            response.sendRedirect("sign_up.jsp");
             }
%>
