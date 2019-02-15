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
    <link rel="stylesheet" href="RegistrationForm.css">
</head>
<body>
<form method="post" action="Register" class="signUpForm">
   <input type="text" placeholder="Email" id="1" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="example@example.com"/>
   <input type="password" placeholder="Password" id="2" name="pass"  pattern=".{6,}" title="Six or more characters"/>
   <input type="text" id="3" placeholder="Name" name="name" pattern="[^'\x22]+" title="only letters"/>
   <input type="number" id="4" placeholder="Age" name="age"  step="1" min="16" max="60" title="age no more than 60"/>
    <input type="text" id="5" placeholder="City" name="city" />

    <font color="white"> <label for="6">Employer</label></font>
    <input type="radio" name="role" id="6" value="employer">
   <font color="white"> <label for="7">Applicant</label></font>
    <input type="radio" name="role" id="7" value="applicant">

    <input type="submit" value="submit"   id="snbtn2"/>

    <script src="ValdiateEmail.js"></script>
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="disableButton.js"></script>
</form>
<script>
</script>
</body>
</html>
