<%-- 
    Document   : update1
    Created on : Jul 27, 2019, 2:21:57 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myblooddonatsystem.*"%>
<jsp:useBean id="dbobj" class="com.mycompany.myblooddonatsystem.updatejava"/>  
<%if(request.getParameter("update1").toString().equals("Update1")){
        
        String email = request.getParameter("email");
        String phone =request.getParameter("phone");
        String address =request.getParameter("address");
        String lastdate=request.getParameter("lastdate");
        
        String emaildata = (String) session.getAttribute("userEmail");
         if(emaildata != null){
             int edit = dbobj.addupdate(email,phone,address,lastdate);
          
          if(edit == 1){
              response.sendRedirect("prof.jsp");
          }
          else
              response.sendRedirect("update.jsp");
         }
         else
         {
             session = request.getSession();
             session.setAttribute("editerror", "Edit Fail. Log In First.");
             response.sendRedirect("update.jsp");
         }
          
    }

     else{
            response.sendRedirect("update.jsp");  
         }

         
%>
