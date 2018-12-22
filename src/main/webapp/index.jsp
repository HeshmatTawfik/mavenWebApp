<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome page</title>
    <link rel="stylesheet" type="text/css" href="index.css">

</head>
<body>

<ul>
    <li><a href="index.jsp">Home</a></li>
    <li><a href="RegisteringForm.jsp">Register</a></li>
    <li><a href="">About</a></li>
    <li><a href="">Contact us</a></li>

</ul>
<h1 id="h1"> Already a member? </h1>
<div class="LoginBox">

    <form method="post" action="Login">
        <p>  Email:<input type="text" name="email" pattern="[^'\x22]+" id="email"/><br/>
            Password:<input type="password" name="pass" id="pass"/><br/>
        </p>
        <input type="submit" value="sign in" id="snbtn"/>
        <h2 id="h2"> New here?</h2>
        <br> <input type="button" id="box2" value="Register now" onclick=window.location.href='RegisteringForm.jsp' > <br/>

        <script src="ValdiateEmail.js"></script>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="disableButton.js"></script>
    </form>


</div>
<%
    if(session.getAttribute("email")!=null){
        response.sendRedirect("ProfilePage.jsp");
    }

%>
<div class="Rbox">
    <p> you have a question !</p>
    <button  id="box" style="vertical-align:middle"><span>Contact us now ! </span></button>
</div>


</body>
</html>