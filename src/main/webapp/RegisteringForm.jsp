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
</head>
<body>
<form method="post" action="Register" class="signUpForm">
<fieldset>
  <label> Email1:<input type="text" id="1" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="example@example.com"/><br/></label>
    <label>   Password:<input type="password" id="2" name="pass"  pattern=".{6,}" title="Six or more characters"/><br/></label>
    <label>   Name:<input type="text" id="3" name="name" pattern="[^'\x22]+" title="only letters"/><br/></label>
    <label> Age:<input type="number" id="4" name="age"  step="1" min="16" max="60" title="age no more than 60"/><br/></label>
    <label> City:<input type="text" id="5" name="city" /><br/></label>
    <label> choose a role:<br/></label>
    <label> employer:<input type="radio" id="6" name="role" value="employer"><br/></label>
    <label>  applicant:<input type="radio" id="7" name="role" value="applicant"><br/></label>

    <input type="submit" value="submit"   id="snbtn2"/>
</fieldset>
    <script src="ValdiateEmail.js"></script>
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="disableButton.js"></script>
</form>
<script>
</script>
</body>
</html>
