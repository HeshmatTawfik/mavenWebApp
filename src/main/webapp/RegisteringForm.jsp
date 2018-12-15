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
  <label> Email12:<input type="text" id="1" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="example@example.com"/><br/></label>
    <label>   Password:<input type="password" id="2" name="pass"  pattern=".{6,}" title="Six or more characters"/><br/></label>
    <label>   Name:<input type="text" id="3" name="name" pattern="[^'\x22]+" title="only letters"/><br/></label>
    <label> Age:<input type="number" id="4" name="age"  step="1" min="16" max="60" title="age no more than 60"/><br/></label>
    <label> City:<input type="text" id="5" name="city" /><br/></label>
    <label> choose a role:<br/></label>
    <label> employer:<input type="radio" id="6" name="role" value="employer"><br/></label>
    <label>  applicant:<input type="radio" id="7" name="role" value="applicant"><br/></label>

    <input type="submit" value="submit"   />
</fieldset>
</form>
<script>
/*    function validation() {
        var email=document.getElementById.value('1');
        var pass=document.getElementById.value('2');
        var name=document.getElementById.value('3');
        var age=document.getElementById.value('4');
        var city=document.getElementById.value('5');
        var employer=document.getElementById.value('6');
        var applicant=document.getElementById.value('7');

        if (email==""||pass==""||name==""||age==""||city==""||(employer==""||applicant=="")){
    alert('field is empty');
    return false;
     pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="example@example.com"
}
    }*/
</script>
</body>
</html>
