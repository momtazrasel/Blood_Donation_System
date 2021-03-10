<%-- 
    Document   : feedback-process
    Created on : Aug 2, 2019, 11:42:14 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myblooddonatsystem.*"%>
<jsp:useBean id="dbobj" class="com.mycompany.myblooddonatsystem.feedback"/>  
<%if(request.getParameter("feedback").toString().equals("Feedback")){
        
        String email = (String) session.getAttribute("userEmail");
        String name =request.getParameter("name");
        String subject =request.getParameter("subject");
        String message=request.getParameter("message");
        
        if(email != null){
             dbobj.addFeedback(email,name,subject,message);
             session = request.getSession();
             session.setAttribute("feedbackmeg", "Thank you for your feedback.");
             response.sendRedirect("feedback.jsp");
        }
        else
         {
             session.setAttribute("feedbackmeg", "Log In First.");
             response.sendRedirect("feedback.jsp");
         }
            
    }

     else{
            session.setAttribute("elsemeg", "Please try again");
            response.sendRedirect("feedback.jsp");  
         }
     
%>