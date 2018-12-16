<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome page</title>
    <link rel="stylesheet" type="text/css" href="index.css">

</head>
<body>

<h1 id="h1"> you can sign in below </h1>
<div class="LoginBox">

    <form method="post" action="Login">
        <p>  Email:<input type="text" name="email" pattern="[^'\x22]+" id="email"/><br/>
            Password:<input type="password" name="pass" id="pass"/><br/>
        </p>
        <input type="submit" value="sign in" id="snbtn"/>
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
    <p>
        <b> What are you waiting for  </b>
        <b> Sign Up Now ! </b>
    </p>
    <br> <input type="button" value="Register" onclick=window.location.href='RegisteringForm.jsp' > <br/>

</div>

<button class="button" style="vertical-align:middle"><span>First time here </span></button>
<h2 id="h2"> you have a question !</h2>
<button class="contact" style="vertical-align:middle"><span>Contact us now ! </span></button>
</body>
</html>