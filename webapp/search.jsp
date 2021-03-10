<%-- 
    Document   : search
    Created on : Jul 23, 2019, 1:12:38 AM
    Author     : User
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myblooddonatsystem.*"%>
<jsp:useBean id="dbobj" class="com.mycompany.myblooddonatsystem.Database"/>  
<%if(request.getParameter("searchpage").toString().equals("search")){

    String search = request.getParameter("search");
    String A1 = "A+";
    String A2 = "A-";
    String B1 = "B+";
    String B2 = "B-";
    String AB1 = "AB+";
    String AB2 = "AB-";
    String O1 = "O+";
    String O2 = "O-";
    
    String a1 = "a+";
    String a2 = "a-";
    String b1 = "b+";
    String b2 = "b-";
    String ab1 = "ab+";
    String ab2 = "ab-";
    String o1 = "o+";
    String o2 = "o-";
    
    
    if(search.equals(A1) || search.equals(a1)){
        response.sendRedirect("donor_lista1.jsp");
    }
    else if(search.equals(A2) || search.equals(a2)){
        response.sendRedirect("donor_lista2.jsp");
    }
    else if(search.equals(B1) || search.equals(b1)){
        response.sendRedirect("donor_listb1.jsp");
    }
    else if(search.equals(B2) || search.equals(b2)){
        response.sendRedirect("donor_listb2.jsp");
    }
    else if(search.equals(AB1) || search.equals(ab1)){
        response.sendRedirect("donor_listab1.jsp");
    }
    else if(search.equals(AB2) || search.equals(ab2)){
        response.sendRedirect("donor_listab2.jsp");
    }
    else if(search.equals(O1) || search.equals(o1)){
        response.sendRedirect("donor_listo1.jsp");
    }
    else if(search.equals(O2) || search.equals(o2)){
        response.sendRedirect("donor_listo2.jsp");
    }
    else{
        response.sendRedirect("index.jsp");
    }
    }

         
%>
