<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: heshmat
  Date: 12/22/2018
  Time: 10:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Post a job</title>
</head>
<body>

<div>
    <form method="post" action="PostJob">
        <fieldset>
            <label>Job category:
                <select name="jobCategory">
                    <option value="IT" name="jobCategory">IT</option>
                    <option value="Marketing" name="jobCategory">Marketing</option>
                    <option value="Writing" name="jobCategory">Writing </option>
                    <option value="Translation" name="jobCategory">Translation </option>
                </select>
            </label><br>
            <label>Job name: <input type="text" name="jobName"/></label> <br>
            <label><a>job description:</a><textarea name="jobDescription" ></textarea> </label>
            <br>
            <input type="submit" value="post" />

        </fieldset>
    </form>


</div>

</body>
</html>
