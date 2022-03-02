<%-- 
    Document   : message
    Created on : Feb 22, 2022, 9:58:21 AM
    Author     : Rahul
--%>

<%

String message = (String)session.getAttribute("message");
if(message != null){

out.println(message);
session.removeAttribute("message");
    }

%>