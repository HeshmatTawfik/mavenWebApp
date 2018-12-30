<%--
  Created by IntelliJ IDEA.
  User: heshmat
  Date: 12/11/2018
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employer</title>
</head>
<body>
<h1>Hello <%=  session.getAttribute("username")%></h1>
<h2>looking for employees ?
    you can see who applied for jobs you posted !!
</h2>

<input type="button" value="check applicants"  onclick=window.location.href='CheckApplicant.jsp'> <br/>
<h3> you want to post a new job ?</h3>
<input type="button" value="publish a job"  onclick=window.location.href='PostJobs.jsp'> <br/>
<!--<input type="button" value="your posted jobs"  onclick=window.location.href='EmpPostedJobs.jsp'> <br/>-->
<!--<input type="button" value=<a href="EmpPostedJobs.jsp"></a>-->
<!--<a href="EmpPostedJobs.jsp" class="w3-btn w3-black">Link Button</a>-->
<form method="get" action="EmpPostedJobs">
    <input type="submit" value="My jobs" />

</form>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    response.setHeader("Progma","no-cache");
    response.setDateHeader("Expires",0);
    if(session.getAttribute("email")==null){
        response.sendRedirect("index.jsp");
    }

%>
<form action="Logout"><input type="submit" value="Logout"></form></body>
</html>

