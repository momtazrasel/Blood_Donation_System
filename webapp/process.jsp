<%-- 
    Document   : process
    Created on : Jul 5, 2019, 1:08:20 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myblooddonatsystem.*"%>
<jsp:useBean id="dbobj" class="com.mycompany.myblooddonatsystem.Database"/>  
<%if(request.getParameter("page").toString().equals("Share")){
        
        String bloodGroup =request.getParameter("blood_group");
        String email =request.getParameter("email");
        String phnNum=request.getParameter("phnNum");
        String HAddress=request.getParameter("HAddress");
       
  
         if(bloodGroup !=null && email!=null && phnNum!=null){
             dbobj.addCustomer(bloodGroup ,email,phnNum,HAddress);

              response.sendRedirect("request_list.jsp");
         }
         else{
             response.sendRedirect("index.jsp");
         }
    }

     else{
            out.print("Registration failed");  
         }



         
%>