<%-- 
    Document   : index
    Created on : Feb 15, 2022, 6:51:06 AM
    Author     : Rahul
--%>


<%@page import="com.ecommerce.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="common_css_js/com_css_js.jsp"  %> 
        
         </head>
    
         <%@include file="common_css_js/navBar.jsp" %>
    <body>
        <h1>Hello World!</h1>
        <h1>Creating session factory Object</h1>
        <%
            try {
                out.println(FactoryProvider.getFactory() + "<br>");
                out.println(FactoryProvider.getFactory() + "<br>");
                out.println(FactoryProvider.getFactory() + "<br>");
            } catch (Exception e) {
                e.printStackTrace();
                //out.println(e.getStackTrace().toString());
                StackTraceElement[] stktrace = e.getStackTrace();

                for (int i = 0; i < stktrace.length; i++) {

                    out.println("<br>Index " + i
                            + " of stack trace"
                            + " array conatins = "
                            + stktrace[i].toString());
                }
            }

        %>
    </body>
</html>
