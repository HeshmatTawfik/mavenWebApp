<%--
  Created by IntelliJ IDEA.
  User: alous
  Date: 11/22/2018
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registering form</title>
  <link rel="stylesheet" type="text/css" href="Register.css">

</head>
<body>
<ul>
  <li><a href="index.jsp">Home</a></li>
  <li><a href="">Contact us</a></li>
</ul>
<form method="post" action="Register" class="signUpForm">

   Email:<input type="text" id="1" name="email" pattern="[Aa-zZ0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="example@example.com"/><br/>
   Password:<input type="password" id="2" name="pass"  pattern=".{6,}" title="Six or more characters"/><br/>
   Name:<input type="text" id="3" name="name" pattern="[^'\x22]+" title="only letters"/><br/>
   Age:<input type="number" id="4" name="age"  step="1" min="16" max="60" title="age no more than 60"/><br/>
   City:<input type="text" id="5" name="city" /><br/>
   choose a role:<br/>
   employer:<input type="radio" id="6" name="role" value="employer"><br/>
   applicant:<input type="radio" id="7" name="role" value="applicant"><br/>

    <input type="submit" value="submit"   id="snbtn2"/>
    <script src="ValdiateEmail.js"></script>
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="disableButton.js"></script>
</form>
<script>
</script>
</body>
</html>
