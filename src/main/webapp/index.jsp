<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome page</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>


    <form class="box" method="post" action="Login">
        <h1 title="LOGIN">LOGIN</h1>
         <input type="text" name="email" placeholder="Email" pattern="[^'\x22]+" id="email">
         <input type="password" name="pass" placeholder="password" id="pass">
        <input type="submit" value="sign in" title="Login" id="snbtn"/>
        <script src="ValdiateEmail.js"></script>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="disableButton.js"></script>
    </form>



<%
    if (session.getAttribute("email") != null)
    {
        if (session.getAttribute("role").equals("employer"))
        {
            response.sendRedirect("EmployerPage.jsp");
        }

         if (session.getAttribute("role").equals("applicant"))
         {
            response.sendRedirect("ApplicantPage.jsp");
         }
         if(session.getAttribute("role")==null){
             response.sendRedirect("index.jsp");

         }

    }



%>
<div class="box2">
    <h2> NEW HERE !! </h2>
    <input type="button" value="Register" onclick=window.location.href='RegisteringForm.jsp'>

</div>

<div class="menu">
    <a href="#" class="btn">Home</a>
    <a href="#" class="btn">About</a>
    <a href="#" class="btn">Services</a>
    <a href="#" class="btn">Contact</a>
</div>


</body>
</html>