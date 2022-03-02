<%-- 
    Document   : register
    Created on : Feb 20, 2022, 9:24:27 AM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        <%@include file="common_css_js/com_css_js.jsp" %>
    </head>
    <  
    > <img src= "images/shutterstock_140484307-agricultuur-scaled.jpg">

        <%@include file="common_css_js/navBar.jsp" %>
        
        <div class='container-fluid'>
            <div class="row" mt-5>
            <div class="col-md-4 offset-md-3">
                <div class="card">
                    
                    <%@include file="common_css_js/message.jsp" %>
                    
                    <div class="card-body">

                        <form action="RegisterServlet" action="post">
                            <h1 class="text-center my-3">Sign Up Here!</h1>
                            <div class="mb-3">
                                <label for="fname" class="form-label">User Name</label>
                                <input name="user_name" type="text" class="form-control" id="fname" placeholder="Enter Your Name" aria-describedby="emailHelp">

                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">User Email</label>
                                <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter your Email">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter your Password">
                            </div>
                            <div class="mb-3">
                                <label for="pnumber" class="form-label">Phone Number</label>
                                <input name="user_phone" type="number" class="form-control" id="pnumber" placeholder="Enter your Phone Number">
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">User Address</label>
                                <textarea name="user_address" class="form-control" style=height:200px placeholder="Enter your Address"></textarea>

                                <div class="container text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="Reset" class="btn btn-warning">Submit</button>
                                </div>
                        </form>   


                    </div></div>



            </div>
        </div>
            
            
            
        </div><!-- comment -->
    </body>
</html>
