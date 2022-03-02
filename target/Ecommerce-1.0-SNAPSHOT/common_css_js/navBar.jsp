<%-- 
    Document   : navBar
    Created on : Feb 20, 2022, 7:08:09 AM
    Author     : Rahul
--%>

<nav class="navbar navbar-expand-lg navbar-dark custom-bg">
    <div class="container">
       <a class="navbar-brand" href="#">AgroFarm</a>
 

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Food Item</a>
           <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Vegetable</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Other</a>
        </div>
    
    </ul>
      
      <ul class="navbar-nav ml-auto">
         <li class="nav-item active">
        <a class="nav-link" href="login.jsp">Login</a>
      </li>
       
          <li class="nav-item active">
              <a class="nav-link" href="register.jsp">Sign Up</a>
      </li>
         
      </ul>
      
    
  </div>   
    </div>
</nav>