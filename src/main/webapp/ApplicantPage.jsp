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
    <meta charset="UTF-8">
    <title>Applicant</title>
    <link rel="stylesheet" href="Applicant.css">
</head>
<body>
<h1>Hello <%=  session.getAttribute("username")%></h1>
<!--button-->
<div id="main">
  <span style="cursor:pointer" onclick="myFunction(this)">

<div class="container" onclick=" toggleNav();">
  <div class="bar1"></div>
  <div class="bar2"></div>
  <div class="bar3"></div>
</div>
</span>
</div>

<!--button-->
<div class="vertical-menu" id="mySidepanel" >

    <a href="#" class="active">Home</a>
    <a href="#" id="aa">Profile</a>
    <a href="JobSearch.jsp">search job</a>
    <a href="#">applied jobs</a>
    <a href="Logout">Logout</a>


</div>


<script src="Applicant.js"></script>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    response.setHeader("Progma","no-cache");
    response.setDateHeader("Expires",0);
    if(session.getAttribute("email")==null){
        response.sendRedirect("index.jsp");
    }

%>

</body>


</html>



