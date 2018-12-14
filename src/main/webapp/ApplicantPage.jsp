<%--
  Created by IntelliJ IDEA.
  User: heshmat
  Date: 12/11/2018
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Applicant</title>
</head>
<body>

<h1>Hello <%=  session.getAttribute("username")%></h1>
<h2>looking for a job ?
    you can see what employers are looking for !!
</h2>
<input type="button" value="check available jobs"  onclick=window.location.href='AvailableJobs.jsp'> <br/>


<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    response.setHeader("Progma","no-cache");
    response.setDateHeader("Expires",0);
    if(session.getAttribute("email")==null){
        response.sendRedirect("index.jsp");
    }

%>
<form action="Logout"><input type="submit" value="Logout"></form>
</body>
</html>

