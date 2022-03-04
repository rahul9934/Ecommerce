<%-- 
    Document   : login
    Created on : Mar 2, 2022, 8:48:44 AM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="common_css_js/navBar.jsp" %>
        <%@include file="common_css_js/com_css_js.jsp" %>
        <title>User Login</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card" mt-3>
                        <div class="card-header custom-bg text-white">
                            <h3>Login Here</h3>
                        </div>
                        <div class="card-body">
                            <form action="loginServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
  </div>
  
  </div>
                        <div class="container text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
   <button type="reset" class="btn btn-primary">Reset</button>
</form>
                            
                        </div>
                        <div class="card-footer">
                            
                            <a href="register.jsp">If not register click here</a>
                        </div> 

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
